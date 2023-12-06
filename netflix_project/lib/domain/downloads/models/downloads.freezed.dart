// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadsModel _$DownloadsModelFromJson(Map<String, dynamic> json) {
  return _DownloadsModel.fromJson(json);
}

/// @nodoc
mixin _$DownloadsModel {
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError; // Add a comma here
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsModelCopyWith<DownloadsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsModelCopyWith<$Res> {
  factory $DownloadsModelCopyWith(
          DownloadsModel value, $Res Function(DownloadsModel) then) =
      _$DownloadsModelCopyWithImpl<$Res, DownloadsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class _$DownloadsModelCopyWithImpl<$Res, $Val extends DownloadsModel>
    implements $DownloadsModelCopyWith<$Res> {
  _$DownloadsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsModelImplCopyWith<$Res>
    implements $DownloadsModelCopyWith<$Res> {
  factory _$$DownloadsModelImplCopyWith(_$DownloadsModelImpl value,
          $Res Function(_$DownloadsModelImpl) then) =
      __$$DownloadsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'poster_path') String? posterPath});
}

/// @nodoc
class __$$DownloadsModelImplCopyWithImpl<$Res>
    extends _$DownloadsModelCopyWithImpl<$Res, _$DownloadsModelImpl>
    implements _$$DownloadsModelImplCopyWith<$Res> {
  __$$DownloadsModelImplCopyWithImpl(
      _$DownloadsModelImpl _value, $Res Function(_$DownloadsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_$DownloadsModelImpl(
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadsModelImpl implements _DownloadsModel {
  const _$DownloadsModelImpl(
      {@JsonKey(name: 'backdrop_path') required this.backdropPath,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'poster_path') required this.posterPath});

  factory _$DownloadsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadsModelImplFromJson(json);

  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'title')
  final String? title;
// Add a comma here
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;

  @override
  String toString() {
    return 'DownloadsModel(backdropPath: $backdropPath, title: $title, posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsModelImpl &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backdropPath, title, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsModelImplCopyWith<_$DownloadsModelImpl> get copyWith =>
      __$$DownloadsModelImplCopyWithImpl<_$DownloadsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadsModelImplToJson(
      this,
    );
  }
}

abstract class _DownloadsModel implements DownloadsModel {
  const factory _DownloadsModel(
          {@JsonKey(name: 'backdrop_path') required final String? backdropPath,
          @JsonKey(name: 'title') required final String? title,
          @JsonKey(name: 'poster_path') required final String? posterPath}) =
      _$DownloadsModelImpl;

  factory _DownloadsModel.fromJson(Map<String, dynamic> json) =
      _$DownloadsModelImpl.fromJson;

  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override // Add a comma here
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$DownloadsModelImplCopyWith<_$DownloadsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
