import 'package:movie_app/core/db/app_database.dart';
import 'package:movie_app/core/helpers/imports_helper.dart';

class MovieController extends BaseProvider {

  final AppDatabase database;
  MovieController(this.database);

  ///Dashboard properties
  int selectBtmIndex = 1;
  setSelectedBtmIndex(int index) async {
    selectBtmIndex = index;
    notifyListeners();
  }
  final List<Widget> bodies = [
    const Center(
      child: Text("Coming soon"),
    ),
    const MovieListScreen(),
    const Center(
      child: Text("Coming soon"),
    ),
    const Center(
      child: Text("Coming soon"),
    ),
  ];

  final List<String> icons = [
    IconsPaths.icDashboard,
    IconsPaths.icWatch,
    IconsPaths.icMedia,
    IconsPaths.icMore,
  ];

  final List<String> labels = [
    'Dashboard',
    'Watch',
    'Media library',
    'More',
  ];

  ///Movie list screen properties
  MovieListModel? movieListModel;
  List<ResultModel> result = [];

  setMovieListModel(MovieListModel movieListModel) {
    this.movieListModel = movieListModel;
    result.addAll(movieListModel.results ?? []);
    notifyListeners();
  }

  disposeMovieList() {
    result.clear();
    movieListModel = null;
    notifyListeners();
  }

  ScrollController scrollController = ScrollController();

  initializeScrollController() {
    callAfterFrame(() {
      scrollController = ScrollController();
      scrollController.addListener(onScroll);
      notifyListeners();
    });
  }

  void onScroll() {
    if (scrollController.hasClients) {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        loadMoreTasks();
        notifyListeners();
      }
    }
  }

  /// Search Movies Feature Properties
  TextEditingController moviesSearchController = TextEditingController();

    onTextChange(String value) {
      setSearchMoviesList(value);
      moviesSearchController.text = value;
      notifyListeners();
    }

  List<ResultModel> searchedMovies = [];

  setSearchMoviesList(String searchedValue) {
    if (searchedValue.isEmpty) {
      // Clear the list if the search value is empty
      searchedMovies.clear();
    } else {
      // Filter and add items to the list if they contain the searchedValue
      searchedMovies = result.where((project) => project.title?.toLowerCase().contains(searchedValue.toLowerCase()) == true).toList() ?? [];
    }
    // Notify listeners if using a provider or state management
    notifyListeners();
  }

  disposeSearchValues(){
      moviesSearchController.clear();
      searchedMovies.clear();
      notifyListeners();
    }

  ///Movies Details Properties ***************************************************
  MovieDetailsModel? movieDetailsModel;

  setMovieDetailsModel(MovieDetailsModel movieDetailsModel) {
    this.movieDetailsModel = movieDetailsModel;
    notifyListeners();
  }

  ///Trailer properties
  TrailerModel? trailerModel;
  setTrailerModel(TrailerModel trailerModel) {
    this.trailerModel = trailerModel;
    notifyListeners();
  }

  void playTrailer(int movieId, BuildContext context) async {
    await MovieServices.playTrailer(movieId.toString()).then((value) {
      if (value) {
        Navigator.pushNamed(context, RoutesPaths.trailerScreen);
      } else {
        ToastUtils.showErrorToast("Trailer not available");
      }
    });
  }

  String getTrailerId() {
    String url = '';

    if (trailerModel?.results?.isNotEmpty == true) {
      final trailer = trailerModel?.results?.firstWhere(
        (video) => video.type == 'Trailer' && video.site == 'YouTube',
        orElse: () => TrailerResultModel(key: ''), // Provide a default object
      );

      if (trailer != null && trailer.key?.isNotEmpty == true) {
        url = "https://www.youtube.com/watch?v=${trailer.key}";
      }
    }
    return url;
  }

  List<Color> generesColorList = [
    const Color(0xFFE26CA5), // Pink
    const Color(0xFF15D2BC), // Teal
    const Color(0xFF564CA3), // Purple
    const Color(0xFFCD9D0F), // Gold
  ];

  Future<void> loadMoreTasks() async {
    readProvider<LoaderProvider>().enableRefresher();
    await MovieServices.getMoviesList(isRefresh: false);
  }

  @override
  void disposeValues() {
    notifyListeners();
    // TODO: implement disposeValues
  }
}
