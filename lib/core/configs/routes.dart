import 'package:movie_app/core/helpers/imports_helper.dart';

class RoutesPaths {
  static const String navBar = "navBar";
  static const String moviesSearch = "moviesSearch";
  static const String movieDetails = "movieDetails";
  static const String trailerScreen = "trailerScreen";
  static const String seatsDetailsScreen = "seatsDetailsScreen";
  static const String selectedSeat = "selectedSeat";

}

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    RoutesPaths.navBar: (context) => const AppNavBar(),
    RoutesPaths.moviesSearch: (context) => const MoviesSearchScreen(),
    RoutesPaths.movieDetails: (context) => const MovieDetailsScreen(),
    RoutesPaths.trailerScreen: (context) => const TrailerPlayerScreen(),
    RoutesPaths.seatsDetailsScreen: (context) => const SeatsDetailsScreen(),
    RoutesPaths.selectedSeat: (context) => const SelectedSeatScreen(),

  };
}
