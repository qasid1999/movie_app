import 'package:movie_app/core/db/app_database.dart';
import 'package:movie_app/core/helpers/imports_helper.dart';
import 'package:provider/single_child_widget.dart';

class ProvidersList {
  static Future<List<SingleChildWidget>> initProviders() async {
    // Initialize Floor Database
    final database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();

    return [
      ChangeNotifierProvider(
        create: (_) => LoaderProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => MovieController(database), // Pass database instance
      ),
      ChangeNotifierProvider(
        create: (_) => SeatController(), // Pass database instance
      ),
    ];
  }
}
