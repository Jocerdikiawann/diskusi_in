part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.failed(String msg) = _Failed;
  const factory AuthenticationState.success(UserModel data) = _Success;
}
