import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'movie_list_entity.dart';
import 'movie_list_dao.dart';

part 'app_database.g.dart'; // GENERATED FILE (RUN BUILD COMMAND)

@Database(version: 1, entities: [MovieListEntity])
abstract class AppDatabase extends FloorDatabase {
  MovieListDao get movieListDao;
}
