part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.loading() = Loading;
  const factory AuthenticationState.failed(String msg) = Failed;
  const factory AuthenticationState.success(UserModel data) = Success;
}
