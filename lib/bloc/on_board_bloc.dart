import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:diskusi_in/ui/component/snackbar.dart';
import 'package:diskusi_in/utils/error_type.dart';
import 'package:diskusi_in/utils/permission_handler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'on_board_event.dart';
part 'on_board_state.dart';
part 'on_board_bloc.freezed.dart';

class OnBoardBloc extends Bloc<OnBoardEvent, OnBoardState> {
  OnBoardBloc() : super(const _Initial()) {
    on<_GotoSignIn>(_gotoSignIn, transformer: droppable());
    on<_GotoSignUp>(_gotoSignUp, transformer: droppable());
  }

  void _gotoSignIn(
    _GotoSignIn event,
    Emitter<OnBoardState> emit,
  ) {
    emit(const OnBoardState.loading());

    PermissionHandler().give().then((result) {
      switch (result.type) {
        case ErrorType.ok:
          if (event.context.mounted) {
            event.context.pushNamed("signIn");
          }
          break;
        case ErrorType.permissionDenied:
          if (event.context.mounted) {
            event.context.errorSnackbar(result.message);
          }
          break;
        default:
          break;
      }
    });

    emit(const OnBoardState.done());
  }

  void _gotoSignUp(
    _GotoSignUp event,
    Emitter<OnBoardState> emit,
  ) {
    emit(const OnBoardState.loading());

    PermissionHandler().give().then((result) {
      switch (result.type) {
        case ErrorType.ok:
          if (event.context.mounted) event.context.pushNamed("signUp");
          break;
        case ErrorType.permissionDenied:
          if (event.context.mounted) {
            event.context.errorSnackbar(result.message);
          }
          break;
        default:
          break;
      }
    });

    emit(const OnBoardState.done());
  }
}
