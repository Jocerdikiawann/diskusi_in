part of "on_board_bloc.dart";

@freezed
class OnBoardEvent with _$OnBoardEvent {
  const factory OnBoardEvent.gotoSignIn(BuildContext context) = _GotoSignIn;
  const factory OnBoardEvent.gotoSignUp(BuildContext context) = _GotoSignUp;
}
