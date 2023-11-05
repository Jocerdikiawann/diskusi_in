import 'package:bloc/bloc.dart';
import 'package:diskusi_in/model/user/user_model.dart';
import 'package:diskusi_in/repository/user_repository.dart';
import 'package:diskusi_in/utils/error_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required this.userRepository}) : super(const _Initial()) {
    on<_SignIn>(_signIn);

    on<_SignUp>(_signUp);
  }

  final UserRepository userRepository;

  Future<void> _signIn(
    _SignIn event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationState.loading());

    final data = await userRepository.signIn(event.email, event.password);
    data.when(
        failed: (ErrorType type, String msg) =>
            {emit(AuthenticationState.failed(msg))},
        success: (data) => {emit(AuthenticationState.success(data))});
  }

  Future<void> _signUp(
    _SignUp event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationState.loading());

    final data = await userRepository.signUp(
      event.fullName,
      event.email,
      event.password,
      event.passwordConfirm,
    );
    data.when(
        failed: (ErrorType type, String msg) =>
            {emit(AuthenticationState.failed(msg))},
        success: (data) => {emit(AuthenticationState.success(data))});
  }
}
