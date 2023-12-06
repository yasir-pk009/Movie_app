import 'package:json_annotation/json_annotation.dart';

part 'hotandnewmodel.g.dart';

@JsonSerializable()
class MovieModel {
    @JsonKey(name: 'page')
  final int page;

  @JsonKey(name: 'results')
  final List<HotAndNewData> result;


  MovieModel({
    required this.page,
     this.result = const [],
  
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}

@JsonSerializable()
class HotAndNewData {

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'release_date')
  final String releaseDate;

  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'overview')
  final String overview;

  @JsonKey(name: 'original_title')
  final String originalTitle;
    @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'backdrop_path')
  final String backdropPath;

  HotAndNewData({
    required this.title,
    required this.releaseDate,
    required this.posterPath,
    required this.overview,
    required this.originalTitle,
    required this.id,
    required this.backdropPath,
  });

  factory HotAndNewData.fromJson(Map<String, dynamic> json) =>
      _$HotAndNewDataFromJson(json);

  Map<String, dynamic> toJson() => _$HotAndNewDataToJson(this);
}
