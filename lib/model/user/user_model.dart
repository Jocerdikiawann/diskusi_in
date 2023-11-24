import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String fullName,
    required String email,
    required String avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromRecord(RecordModel recordModel) =>
      _$UserModelFromJson(recordModel.toJson());
}

@freezed
class UserSignInModel with _$UserSignInModel {
  const factory UserSignInModel(
      {required String email, required String password}) = _UserSignInModel;

  factory UserSignInModel.fromJson(Map<String, dynamic> json) =>
      _$UserSignInModelFromJson(json);

  factory UserSignInModel.fromRecord(RecordModel recordModel) =>
      _$UserSignInModelFromJson(recordModel.toJson());
}

@freezed
class UserSignUpModel with _$UserSignUpModel {
  const factory UserSignUpModel(
      {required String email,
      required String fullName,
      @Default(true) bool emailVisibility,
      required String password,
      required String passwordConfirm,
      required String fileName,
      required}) = _UserSignUpModel;

  factory UserSignUpModel.fromJson(Map<String, dynamic> json) =>
      _$UserSignUpModelFromJson(json);

  factory UserSignUpModel.fromRecord(RecordModel recordModel) =>
      _$UserSignUpModelFromJson(recordModel.toJson());
}
