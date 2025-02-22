import 'package:floor/floor.dart';
import 'movie_list_entity.dart';

@dao
abstract class MovieListDao {
  @Query('SELECT * FROM MovieListEntity')
  Future<List<MovieListEntity>> getAllMovies();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertMovies(List<MovieListEntity> movies);

  @Query('DELETE FROM MovieListEntity')
  Future<void> clearMovies();
}
