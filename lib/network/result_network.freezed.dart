// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_network.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultNetwork<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorType type, String message) failed,
    required TResult Function(T data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorType type, String message)? failed,
    TResult? Function(T data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorType type, String message)? failed,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedNetwork<T> value) failed,
    required TResult Function(SuccessNetwork<T> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailedNetwork<T> value)? failed,
    TResult? Function(SuccessNetwork<T> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedNetwork<T> value)? failed,
    TResult Function(SuccessNetwork<T> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultNetworkCopyWith<T, $Res> {
  factory $ResultNetworkCopyWith(
          ResultNetwork<T> value, $Res Function(ResultNetwork<T>) then) =
      _$ResultNetworkCopyWithImpl<T, $Res, ResultNetwork<T>>;
}

/// @nodoc
class _$ResultNetworkCopyWithImpl<T, $Res, $Val extends ResultNetwork<T>>
    implements $ResultNetworkCopyWith<T, $Res> {
  _$ResultNetworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FailedNetworkImplCopyWith<T, $Res> {
  factory _$$FailedNetworkImplCopyWith(_$FailedNetworkImpl<T> value,
          $Res Function(_$FailedNetworkImpl<T>) then) =
      __$$FailedNetworkImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorType type, String message});
}

/// @nodoc
class __$$FailedNetworkImplCopyWithImpl<T, $Res>
    extends _$ResultNetworkCopyWithImpl<T, $Res, _$FailedNetworkImpl<T>>
    implements _$$FailedNetworkImplCopyWith<T, $Res> {
  __$$FailedNetworkImplCopyWithImpl(_$FailedNetworkImpl<T> _value,
      $Res Function(_$FailedNetworkImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? message = null,
  }) {
    return _then(_$FailedNetworkImpl<T>(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ErrorType,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedNetworkImpl<T> implements FailedNetwork<T> {
  const _$FailedNetworkImpl(this.type, this.message);

  @override
  final ErrorType type;
  @override
  final String message;

  @override
  String toString() {
    return 'ResultNetwork<$T>.failed(type: $type, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedNetworkImpl<T> &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedNetworkImplCopyWith<T, _$FailedNetworkImpl<T>> get copyWith =>
      __$$FailedNetworkImplCopyWithImpl<T, _$FailedNetworkImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorType type, String message) failed,
    required TResult Function(T data) success,
  }) {
    return failed(type, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorType type, String message)? failed,
    TResult? Function(T data)? success,
  }) {
    return failed?.call(type, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorType type, String message)? failed,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(type, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedNetwork<T> value) failed,
    required TResult Function(SuccessNetwork<T> value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailedNetwork<T> value)? failed,
    TResult? Function(SuccessNetwork<T> value)? success,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedNetwork<T> value)? failed,
    TResult Function(SuccessNetwork<T> value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FailedNetwork<T> implements ResultNetwork<T> {
  const factory FailedNetwork(final ErrorType type, final String message) =
      _$FailedNetworkImpl<T>;

  ErrorType get type;
  String get message;
  @JsonKey(ignore: true)
  _$$FailedNetworkImplCopyWith<T, _$FailedNetworkImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessNetworkImplCopyWith<T, $Res> {
  factory _$$SuccessNetworkImplCopyWith(_$SuccessNetworkImpl<T> value,
          $Res Function(_$SuccessNetworkImpl<T>) then) =
      __$$SuccessNetworkImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessNetworkImplCopyWithImpl<T, $Res>
    extends _$ResultNetworkCopyWithImpl<T, $Res, _$SuccessNetworkImpl<T>>
    implements _$$SuccessNetworkImplCopyWith<T, $Res> {
  __$$SuccessNetworkImplCopyWithImpl(_$SuccessNetworkImpl<T> _value,
      $Res Function(_$SuccessNetworkImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessNetworkImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessNetworkImpl<T> implements SuccessNetwork<T> {
  const _$SuccessNetworkImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ResultNetwork<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessNetworkImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessNetworkImplCopyWith<T, _$SuccessNetworkImpl<T>> get copyWith =>
      __$$SuccessNetworkImplCopyWithImpl<T, _$SuccessNetworkImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ErrorType type, String message) failed,
    required TResult Function(T data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ErrorType type, String message)? failed,
    TResult? Function(T data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ErrorType type, String message)? failed,
    TResult Function(T data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailedNetwork<T> value) failed,
    required TResult Function(SuccessNetwork<T> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FailedNetwork<T> value)? failed,
    TResult? Function(SuccessNetwork<T> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailedNetwork<T> value)? failed,
    TResult Function(SuccessNetwork<T> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessNetwork<T> implements ResultNetwork<T> {
  const factory SuccessNetwork(final T data) = _$SuccessNetworkImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessNetworkImplCopyWith<T, _$SuccessNetworkImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
