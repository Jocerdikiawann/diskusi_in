part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.signIn(String email, String password) =
      _SignIn;
  const factory AuthenticationEvent.signUp(String fullName, String email,
      String password, String passwordConfirm) = _SignUp;

  const factory AuthenticationEvent.signOut() = _SignOut;
  const factory AuthenticationEvent.checkAuth() = _CheckAuth;
}
