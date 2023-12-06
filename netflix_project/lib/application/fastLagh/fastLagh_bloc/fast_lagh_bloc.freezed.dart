// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_lagh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FastLaghEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initialized,
    required TResult Function(int id) liked,
    required TResult Function(int id) unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? Initialized,
    TResult? Function(int id)? liked,
    TResult? Function(int id)? unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initialized,
    TResult Function(int id)? liked,
    TResult Function(int id)? unliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) Initialized,
    required TResult Function(Liked value) liked,
    required TResult Function(Unliked value) unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? Initialized,
    TResult? Function(Liked value)? liked,
    TResult? Function(Unliked value)? unliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? Initialized,
    TResult Function(Liked value)? liked,
    TResult Function(Unliked value)? unliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaghEventCopyWith<$Res> {
  factory $FastLaghEventCopyWith(
          FastLaghEvent value, $Res Function(FastLaghEvent) then) =
      _$FastLaghEventCopyWithImpl<$Res, FastLaghEvent>;
}

/// @nodoc
class _$FastLaghEventCopyWithImpl<$Res, $Val extends FastLaghEvent>
    implements $FastLaghEventCopyWith<$Res> {
  _$FastLaghEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$FastLaghEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializedImpl implements Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'FastLaghEvent.Initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initialized,
    required TResult Function(int id) liked,
    required TResult Function(int id) unliked,
  }) {
    return Initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? Initialized,
    TResult? Function(int id)? liked,
    TResult? Function(int id)? unliked,
  }) {
    return Initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initialized,
    TResult Function(int id)? liked,
    TResult Function(int id)? unliked,
    required TResult orElse(),
  }) {
    if (Initialized != null) {
      return Initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) Initialized,
    required TResult Function(Liked value) liked,
    required TResult Function(Unliked value) unliked,
  }) {
    return Initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? Initialized,
    TResult? Function(Liked value)? liked,
    TResult? Function(Unliked value)? unliked,
  }) {
    return Initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? Initialized,
    TResult Function(Liked value)? liked,
    TResult Function(Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (Initialized != null) {
      return Initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements FastLaghEvent {
  const factory Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$LikedImplCopyWith<$Res> {
  factory _$$LikedImplCopyWith(
          _$LikedImpl value, $Res Function(_$LikedImpl) then) =
      __$$LikedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$LikedImplCopyWithImpl<$Res>
    extends _$FastLaghEventCopyWithImpl<$Res, _$LikedImpl>
    implements _$$LikedImplCopyWith<$Res> {
  __$$LikedImplCopyWithImpl(
      _$LikedImpl _value, $Res Function(_$LikedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LikedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikedImpl implements Liked {
  const _$LikedImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastLaghEvent.liked(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedImplCopyWith<_$LikedImpl> get copyWith =>
      __$$LikedImplCopyWithImpl<_$LikedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initialized,
    required TResult Function(int id) liked,
    required TResult Function(int id) unliked,
  }) {
    return liked(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? Initialized,
    TResult? Function(int id)? liked,
    TResult? Function(int id)? unliked,
  }) {
    return liked?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initialized,
    TResult Function(int id)? liked,
    TResult Function(int id)? unliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) Initialized,
    required TResult Function(Liked value) liked,
    required TResult Function(Unliked value) unliked,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? Initialized,
    TResult? Function(Liked value)? liked,
    TResult? Function(Unliked value)? unliked,
  }) {
    return liked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? Initialized,
    TResult Function(Liked value)? liked,
    TResult Function(Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class Liked implements FastLaghEvent {
  const factory Liked({required final int id}) = _$LikedImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$LikedImplCopyWith<_$LikedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnlikedImplCopyWith<$Res> {
  factory _$$UnlikedImplCopyWith(
          _$UnlikedImpl value, $Res Function(_$UnlikedImpl) then) =
      __$$UnlikedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$UnlikedImplCopyWithImpl<$Res>
    extends _$FastLaghEventCopyWithImpl<$Res, _$UnlikedImpl>
    implements _$$UnlikedImplCopyWith<$Res> {
  __$$UnlikedImplCopyWithImpl(
      _$UnlikedImpl _value, $Res Function(_$UnlikedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UnlikedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnlikedImpl implements Unliked {
  const _$UnlikedImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FastLaghEvent.unliked(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnlikedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnlikedImplCopyWith<_$UnlikedImpl> get copyWith =>
      __$$UnlikedImplCopyWithImpl<_$UnlikedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() Initialized,
    required TResult Function(int id) liked,
    required TResult Function(int id) unliked,
  }) {
    return unliked(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? Initialized,
    TResult? Function(int id)? liked,
    TResult? Function(int id)? unliked,
  }) {
    return unliked?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? Initialized,
    TResult Function(int id)? liked,
    TResult Function(int id)? unliked,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) Initialized,
    required TResult Function(Liked value) liked,
    required TResult Function(Unliked value) unliked,
  }) {
    return unliked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialized value)? Initialized,
    TResult? Function(Liked value)? liked,
    TResult? Function(Unliked value)? unliked,
  }) {
    return unliked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? Initialized,
    TResult Function(Liked value)? liked,
    TResult Function(Unliked value)? unliked,
    required TResult orElse(),
  }) {
    if (unliked != null) {
      return unliked(this);
    }
    return orElse();
  }
}

abstract class Unliked implements FastLaghEvent {
  const factory Unliked({required final int id}) = _$UnlikedImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$UnlikedImplCopyWith<_$UnlikedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FastLaghState {
  List<DownloadsModel> get downloadList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FastLaghStateCopyWith<FastLaghState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FastLaghStateCopyWith<$Res> {
  factory $FastLaghStateCopyWith(
          FastLaghState value, $Res Function(FastLaghState) then) =
      _$FastLaghStateCopyWithImpl<$Res, FastLaghState>;
  @useResult
  $Res call({List<DownloadsModel> downloadList, bool isLoading, bool isError});
}

/// @nodoc
class _$FastLaghStateCopyWithImpl<$Res, $Val extends FastLaghState>
    implements $FastLaghStateCopyWith<$Res> {
  _$FastLaghStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      downloadList: null == downloadList
          ? _value.downloadList
          : downloadList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FastLaghStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DownloadsModel> downloadList, bool isLoading, bool isError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FastLaghStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$InitialImpl(
      downloadList: null == downloadList
          ? _value._downloadList
          : downloadList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final List<DownloadsModel> downloadList,
      required this.isLoading,
      required this.isError})
      : _downloadList = downloadList;

  final List<DownloadsModel> _downloadList;
  @override
  List<DownloadsModel> get downloadList {
    if (_downloadList is EqualUnmodifiableListView) return _downloadList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloadList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'FastLaghState(downloadList: $downloadList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._downloadList, _downloadList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_downloadList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements FastLaghState {
  const factory _Initial(
      {required final List<DownloadsModel> downloadList,
      required final bool isLoading,
      required final bool isError}) = _$InitialImpl;

  @override
  List<DownloadsModel> get downloadList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
