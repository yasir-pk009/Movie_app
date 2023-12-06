// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotandnew_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotandnewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDataInComing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDataInComing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDataInComing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInComing value) loadDataInComing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDataInComing value)? loadDataInComing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInComing value)? loadDataInComing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotandnewEventCopyWith<$Res> {
  factory $HotandnewEventCopyWith(
          HotandnewEvent value, $Res Function(HotandnewEvent) then) =
      _$HotandnewEventCopyWithImpl<$Res, HotandnewEvent>;
}

/// @nodoc
class _$HotandnewEventCopyWithImpl<$Res, $Val extends HotandnewEvent>
    implements $HotandnewEventCopyWith<$Res> {
  _$HotandnewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadDataInComingImplCopyWith<$Res> {
  factory _$$LoadDataInComingImplCopyWith(_$LoadDataInComingImpl value,
          $Res Function(_$LoadDataInComingImpl) then) =
      __$$LoadDataInComingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDataInComingImplCopyWithImpl<$Res>
    extends _$HotandnewEventCopyWithImpl<$Res, _$LoadDataInComingImpl>
    implements _$$LoadDataInComingImplCopyWith<$Res> {
  __$$LoadDataInComingImplCopyWithImpl(_$LoadDataInComingImpl _value,
      $Res Function(_$LoadDataInComingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadDataInComingImpl implements LoadDataInComing {
  const _$LoadDataInComingImpl();

  @override
  String toString() {
    return 'HotandnewEvent.loadDataInComing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDataInComingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadDataInComing,
  }) {
    return loadDataInComing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadDataInComing,
  }) {
    return loadDataInComing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadDataInComing,
    required TResult orElse(),
  }) {
    if (loadDataInComing != null) {
      return loadDataInComing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDataInComing value) loadDataInComing,
  }) {
    return loadDataInComing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDataInComing value)? loadDataInComing,
  }) {
    return loadDataInComing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDataInComing value)? loadDataInComing,
    required TResult orElse(),
  }) {
    if (loadDataInComing != null) {
      return loadDataInComing(this);
    }
    return orElse();
  }
}

abstract class LoadDataInComing implements HotandnewEvent {
  const factory LoadDataInComing() = _$LoadDataInComingImpl;
}

/// @nodoc
mixin _$HotandnewState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;
  List<HotAndNewData> get comingSoonList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotandnewStateCopyWith<HotandnewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotandnewStateCopyWith<$Res> {
  factory $HotandnewStateCopyWith(
          HotandnewState value, $Res Function(HotandnewState) then) =
      _$HotandnewStateCopyWithImpl<$Res, HotandnewState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      dynamic required,
      List<HotAndNewData> comingSoonList});
}

/// @nodoc
class _$HotandnewStateCopyWithImpl<$Res, $Val extends HotandnewState>
    implements $HotandnewStateCopyWith<$Res> {
  _$HotandnewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? required = freezed,
    Object? comingSoonList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
      comingSoonList: null == comingSoonList
          ? _value.comingSoonList
          : comingSoonList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotandnewStateImplCopyWith<$Res>
    implements $HotandnewStateCopyWith<$Res> {
  factory _$$HotandnewStateImplCopyWith(_$HotandnewStateImpl value,
          $Res Function(_$HotandnewStateImpl) then) =
      __$$HotandnewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      dynamic required,
      List<HotAndNewData> comingSoonList});
}

/// @nodoc
class __$$HotandnewStateImplCopyWithImpl<$Res>
    extends _$HotandnewStateCopyWithImpl<$Res, _$HotandnewStateImpl>
    implements _$$HotandnewStateImplCopyWith<$Res> {
  __$$HotandnewStateImplCopyWithImpl(
      _$HotandnewStateImpl _value, $Res Function(_$HotandnewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? required = freezed,
    Object? comingSoonList = null,
  }) {
    return _then(_$HotandnewStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      required: freezed == required ? _value.required! : required,
      comingSoonList: null == comingSoonList
          ? _value._comingSoonList
          : comingSoonList // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
    ));
  }
}

/// @nodoc

class _$HotandnewStateImpl implements _HotandnewState {
  const _$HotandnewStateImpl(
      {required this.isLoading,
      required this.isError,
      this.required,
      required final List<HotAndNewData> comingSoonList})
      : _comingSoonList = comingSoonList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final dynamic required;
  final List<HotAndNewData> _comingSoonList;
  @override
  List<HotAndNewData> get comingSoonList {
    if (_comingSoonList is EqualUnmodifiableListView) return _comingSoonList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comingSoonList);
  }

  @override
  String toString() {
    return 'HotandnewState(isLoading: $isLoading, isError: $isError, required: $required, comingSoonList: $comingSoonList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotandnewStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other.required, required) &&
            const DeepCollectionEquality()
                .equals(other._comingSoonList, _comingSoonList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(required),
      const DeepCollectionEquality().hash(_comingSoonList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotandnewStateImplCopyWith<_$HotandnewStateImpl> get copyWith =>
      __$$HotandnewStateImplCopyWithImpl<_$HotandnewStateImpl>(
          this, _$identity);
}

abstract class _HotandnewState implements HotandnewState {
  const factory _HotandnewState(
          {required final bool isLoading,
          required final bool isError,
          final dynamic required,
          required final List<HotAndNewData> comingSoonList}) =
      _$HotandnewStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  dynamic get required;
  @override
  List<HotAndNewData> get comingSoonList;
  @override
  @JsonKey(ignore: true)
  _$$HotandnewStateImplCopyWith<_$HotandnewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
