// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({String id, String fullName, String email, String avatar});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String fullName, String email, String avatar});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? avatar = null,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.fullName,
      required this.email,
      required this.avatar});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String avatar;

  @override
  String toString() {
    return 'UserModel(id: $id, fullName: $fullName, email: $email, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      required final String fullName,
      required final String email,
      required final String avatar}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserSignInModel _$UserSignInModelFromJson(Map<String, dynamic> json) {
  return _UserSignInModel.fromJson(json);
}

/// @nodoc
mixin _$UserSignInModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSignInModelCopyWith<UserSignInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignInModelCopyWith<$Res> {
  factory $UserSignInModelCopyWith(
          UserSignInModel value, $Res Function(UserSignInModel) then) =
      _$UserSignInModelCopyWithImpl<$Res, UserSignInModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserSignInModelCopyWithImpl<$Res, $Val extends UserSignInModel>
    implements $UserSignInModelCopyWith<$Res> {
  _$UserSignInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSignInModelImplCopyWith<$Res>
    implements $UserSignInModelCopyWith<$Res> {
  factory _$$UserSignInModelImplCopyWith(_$UserSignInModelImpl value,
          $Res Function(_$UserSignInModelImpl) then) =
      __$$UserSignInModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserSignInModelImplCopyWithImpl<$Res>
    extends _$UserSignInModelCopyWithImpl<$Res, _$UserSignInModelImpl>
    implements _$$UserSignInModelImplCopyWith<$Res> {
  __$$UserSignInModelImplCopyWithImpl(
      _$UserSignInModelImpl _value, $Res Function(_$UserSignInModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserSignInModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSignInModelImpl implements _UserSignInModel {
  const _$UserSignInModelImpl({required this.email, required this.password});

  factory _$UserSignInModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSignInModelImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserSignInModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignInModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignInModelImplCopyWith<_$UserSignInModelImpl> get copyWith =>
      __$$UserSignInModelImplCopyWithImpl<_$UserSignInModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSignInModelImplToJson(
      this,
    );
  }
}

abstract class _UserSignInModel implements UserSignInModel {
  const factory _UserSignInModel(
      {required final String email,
      required final String password}) = _$UserSignInModelImpl;

  factory _UserSignInModel.fromJson(Map<String, dynamic> json) =
      _$UserSignInModelImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserSignInModelImplCopyWith<_$UserSignInModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserSignUpModel _$UserSignUpModelFromJson(Map<String, dynamic> json) {
  return _UserSignUpModel.fromJson(json);
}

/// @nodoc
mixin _$UserSignUpModel {
  String get email => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  bool get emailVisibility => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirm => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSignUpModelCopyWith<UserSignUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignUpModelCopyWith<$Res> {
  factory $UserSignUpModelCopyWith(
          UserSignUpModel value, $Res Function(UserSignUpModel) then) =
      _$UserSignUpModelCopyWithImpl<$Res, UserSignUpModel>;
  @useResult
  $Res call(
      {String email,
      String fullName,
      bool emailVisibility,
      String password,
      String passwordConfirm,
      String fileName,
      dynamic required});
}

/// @nodoc
class _$UserSignUpModelCopyWithImpl<$Res, $Val extends UserSignUpModel>
    implements $UserSignUpModelCopyWith<$Res> {
  _$UserSignUpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fullName = null,
    Object? emailVisibility = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? fileName = null,
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      emailVisibility: null == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSignUpModelImplCopyWith<$Res>
    implements $UserSignUpModelCopyWith<$Res> {
  factory _$$UserSignUpModelImplCopyWith(_$UserSignUpModelImpl value,
          $Res Function(_$UserSignUpModelImpl) then) =
      __$$UserSignUpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String fullName,
      bool emailVisibility,
      String password,
      String passwordConfirm,
      String fileName,
      dynamic required});
}

/// @nodoc
class __$$UserSignUpModelImplCopyWithImpl<$Res>
    extends _$UserSignUpModelCopyWithImpl<$Res, _$UserSignUpModelImpl>
    implements _$$UserSignUpModelImplCopyWith<$Res> {
  __$$UserSignUpModelImplCopyWithImpl(
      _$UserSignUpModelImpl _value, $Res Function(_$UserSignUpModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? fullName = null,
    Object? emailVisibility = null,
    Object? password = null,
    Object? passwordConfirm = null,
    Object? fileName = null,
    Object? required = freezed,
  }) {
    return _then(_$UserSignUpModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      emailVisibility: null == emailVisibility
          ? _value.emailVisibility
          : emailVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordConfirm: null == passwordConfirm
          ? _value.passwordConfirm
          : passwordConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSignUpModelImpl implements _UserSignUpModel {
  const _$UserSignUpModelImpl(
      {required this.email,
      required this.fullName,
      this.emailVisibility = true,
      required this.password,
      required this.passwordConfirm,
      required this.fileName,
      this.required});

  factory _$UserSignUpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSignUpModelImplFromJson(json);

  @override
  final String email;
  @override
  final String fullName;
  @override
  @JsonKey()
  final bool emailVisibility;
  @override
  final String password;
  @override
  final String passwordConfirm;
  @override
  final String fileName;
  @override
  final dynamic required;

  @override
  String toString() {
    return 'UserSignUpModel(email: $email, fullName: $fullName, emailVisibility: $emailVisibility, password: $password, passwordConfirm: $passwordConfirm, fileName: $fileName, required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSignUpModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.emailVisibility, emailVisibility) ||
                other.emailVisibility == emailVisibility) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                other.passwordConfirm == passwordConfirm) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      fullName,
      emailVisibility,
      password,
      passwordConfirm,
      fileName,
      const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSignUpModelImplCopyWith<_$UserSignUpModelImpl> get copyWith =>
      __$$UserSignUpModelImplCopyWithImpl<_$UserSignUpModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSignUpModelImplToJson(
      this,
    );
  }
}

abstract class _UserSignUpModel implements UserSignUpModel {
  const factory _UserSignUpModel(
      {required final String email,
      required final String fullName,
      final bool emailVisibility,
      required final String password,
      required final String passwordConfirm,
      required final String fileName,
      final dynamic required}) = _$UserSignUpModelImpl;

  factory _UserSignUpModel.fromJson(Map<String, dynamic> json) =
      _$UserSignUpModelImpl.fromJson;

  @override
  String get email;
  @override
  String get fullName;
  @override
  bool get emailVisibility;
  @override
  String get password;
  @override
  String get passwordConfirm;
  @override
  String get fileName;
  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$UserSignUpModelImplCopyWith<_$UserSignUpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
