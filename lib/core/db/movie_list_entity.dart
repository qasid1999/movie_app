import 'package:floor/floor.dart';

import '../helpers/imports_helper.dart';

@entity
class MovieListEntity {
  @primaryKey
  final int id;
  final String title;
  final String? posterPath;
  final String? overview;
  final String? releaseDate;
  final double? voteAverage;
  final int? voteCount;

  MovieListEntity({
    required this.id,
    required this.title,
    this.posterPath,
    this.overview,
    this.releaseDate,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieListEntity.fromResultModel(ResultModel model) {
    return MovieListEntity(
      id: model.id ?? 0,
      title: model.title ?? '',
      posterPath: model.posterPath,
      overview: model.overview,
      releaseDate: model.releaseDate?.toIso8601String(),
      voteAverage: model.voteAverage,
      voteCount: model.voteCount,
    );
  }

  ResultModel toResultModel() {
    return ResultModel(
      id: id,
      title: title,
      posterPath: posterPath,
      overview: overview,
      releaseDate: releaseDate != null ? DateTime.parse(releaseDate!) : null,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }
}
