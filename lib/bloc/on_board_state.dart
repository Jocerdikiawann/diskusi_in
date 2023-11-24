part of 'on_board_bloc.dart';

@freezed
class OnBoardState with _$OnBoardState {
  const factory OnBoardState.initial() = _Initial;
  const factory OnBoardState.loading() = _Loading;
  const factory OnBoardState.done() = _Done;
}
