// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
    };

_$UserSignInModelImpl _$$UserSignInModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSignInModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserSignInModelImplToJson(
        _$UserSignInModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$UserSignUpModelImpl _$$UserSignUpModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSignUpModelImpl(
      email: json['email'] as String,
      fullName: json['fullName'] as String,
      emailVisibility: json['emailVisibility'] as bool? ?? true,
      password: json['password'] as String,
      passwordConfirm: json['passwordConfirm'] as String,
      required: json['required'],
    );

Map<String, dynamic> _$$UserSignUpModelImplToJson(
        _$UserSignUpModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'fullName': instance.fullName,
      'emailVisibility': instance.emailVisibility,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
      'required': instance.required,
    };
