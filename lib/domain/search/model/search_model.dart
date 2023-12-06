import 'package:json_annotation/json_annotation.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  @JsonKey(name: 'results')
  final List<SearchResultData> results;

  SearchModel({
    this.results = const [],
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}

@JsonSerializable()
class SearchResultData {
  @JsonKey(name: 'id')
  final int movieId;

  @JsonKey(name: 'title')
  final String movieTitle;

  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'backdrop_path')
  final String backdropPath;

  SearchResultData( this.backdropPath, {
    required this.movieId,
    required this.movieTitle,
    required this.posterPath,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDataFromJson(json);
}
