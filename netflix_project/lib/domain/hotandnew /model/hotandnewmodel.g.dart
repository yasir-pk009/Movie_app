// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotandnewmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      page: json['page'] as int,
      result: (json['results'] as List<dynamic>?)
              ?.map((e) => HotAndNewData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.result,
    };

HotAndNewData _$HotAndNewDataFromJson(Map<String, dynamic> json) =>
    HotAndNewData(
      title: json['title'] as String,
      releaseDate: json['release_date'] as String,
      posterPath: json['poster_path'] as String,
      overview: json['overview'] as String,
      originalTitle: json['original_title'] as String,
      id: json['id'] as int,
      backdropPath: json['backdrop_path'] as String,
    );

Map<String, dynamic> _$HotAndNewDataToJson(HotAndNewData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'release_date': instance.releaseDate,
      'poster_path': instance.posterPath,
      'overview': instance.overview,
      'original_title': instance.originalTitle,
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
    };
