// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadsModelImpl _$$DownloadsModelImplFromJson(Map<String, dynamic> json) =>
    _$DownloadsModelImpl(
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$DownloadsModelImplToJson(
        _$DownloadsModelImpl instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
      'poster_path': instance.posterPath,
    };
