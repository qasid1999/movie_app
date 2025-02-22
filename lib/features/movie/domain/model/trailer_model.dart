// To parse this JSON data, do
//
//     final trailerModel = trailerModelFromJson(jsonString);

import 'dart:convert';

TrailerModel trailerModelFromJson(String str) => TrailerModel.fromJson(json.decode(str));

String trailerModelToJson(TrailerModel data) => json.encode(data.toJson());

class TrailerModel {
  int? id;
  List<TrailerResultModel>? results;

  TrailerModel({
    this.id,
    this.results,
  });

  factory TrailerModel.fromJson(Map<String, dynamic> json) => TrailerModel(
    id: json["id"],
    results: json["results"] == null ? [] : List<TrailerResultModel>.from(json["results"]!.map((x) => TrailerResultModel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
  };
}

class TrailerResultModel {
  String? iso6391;
  String? iso31661;
  String? name;
  String? key;
  String? site;
  int? size;
  String? type;
  bool? official;
  DateTime? publishedAt;
  String? id;

  TrailerResultModel({
    this.iso6391,
    this.iso31661,
    this.name,
    this.key,
    this.site,
    this.size,
    this.type,
    this.official,
    this.publishedAt,
    this.id,
  });

  factory TrailerResultModel.fromJson(Map<String, dynamic> json) => TrailerResultModel(
    iso6391: json["iso_639_1"],
    iso31661: json["iso_3166_1"],
    name: json["name"],
    key: json["key"],
    site: json["site"],
    size: json["size"],
    type: json["type"],
    official: json["official"],
    publishedAt: json["published_at"] == null ? null : DateTime.parse(json["published_at"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "iso_639_1": iso6391,
    "iso_3166_1": iso31661,
    "name": name,
    "key": key,
    "site": site,
    "size": size,
    "type": type,
    "official": official,
    "published_at": publishedAt?.toIso8601String(),
    "id": id,
  };
}
