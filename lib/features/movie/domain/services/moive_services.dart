import 'package:movie_app/core/db/app_database.dart';
import 'package:movie_app/core/db/movie_list_entity.dart';

import '../../../../core/helpers/imports_helper.dart';

class MovieServices {
  static final movieListController = readProvider<MovieController>();
  static final AppDatabase database = movieListController.database;

  static Future<bool> getMoviesList({bool? isRefresh}) async {
    bool isSuccess = false;
    String url = NetworkPaths.movieListEndPoint;
    var params = {
      "page": movieListController.movieListModel?.page == null ||
              isRefresh == true ||
              isRefresh == null
          ? 1
          : movieListController.movieListModel!.page! + 1,
    };

    try {
      final response = await NetworkService.request(
        url,
        method: RequestMethod.GET,
        queryParameters: params,
      );

      if (response != null) {
        if (isRefresh == true || isRefresh == null) {
          movieListController.disposeMovieList();
          await database.movieListDao.clearMovies();
        }

        // Convert API response to MovieListEntity list
        List<MovieListEntity> movies =
            (response.responseData['results'] as List)
                .map((json) =>
                    MovieListEntity.fromResultModel(ResultModel.fromJson(json)))
                .toList();

        // Store movies in Floor DB for offline caching
        await database.movieListDao.insertMovies(movies);

        // Update MovieListModel in Controller
        movieListController
            .setMovieListModel(MovieListModel.fromJson(response.responseData));

        isSuccess = true;
      }
    } catch (error) {
      // If API fails (offline mode), fetch from Floor DB
      List<MovieListEntity> cachedMovies =
          await database.movieListDao.getAllMovies();

      if (cachedMovies.isNotEmpty) {
        print("Using Offline Cached Movies");
        movieListController
            .disposeMovieList(); // ✅ Clear list before adding cached data

        // Convert cached entities to MovieListModel
        MovieListModel offlineModel = MovieListModel(
          results: cachedMovies.map((e) => e.toResultModel()).toList(),
          page: 1, // Offline mode does not support pagination
          totalPages: 1,
          totalResults: cachedMovies.length,
        );

        movieListController.setMovieListModel(offlineModel);
        isSuccess = true;
      }
      ToastUtils.showErrorToast(error.toString());
    }

    return isSuccess;
  }

  static Future<bool> movieDetails(String id) async {
    bool isSuccess = false;
    String url = id;
    await NetworkService.request(
      url,
      method: RequestMethod.GET,
    ).then((value) {
      movieListController.setMovieDetailsModel(
        MovieDetailsModel.fromJson(value.responseData),
      );
      isSuccess = true;
    }).catchError(
      (error) {
        ToastUtils.showErrorToast(error.toString());
      },
    );
    return isSuccess;
  }

  static Future<bool> playTrailer(String id) async {
    bool isSuccess = false;
    String url = "$id/${NetworkPaths.trailerEndPoint}";
    await NetworkService.request(
      url,
      method: RequestMethod.GET,
    ).then((value) {
      movieListController.setTrailerModel(
        TrailerModel.fromJson(value.responseData),
      );
      isSuccess = true;
    }).catchError(
      (error) {
        ToastUtils.showErrorToast(error.toString());
      },
    );
    return isSuccess;
  }
}
