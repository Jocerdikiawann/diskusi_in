import 'package:diskusi_in/utils/error_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_network.freezed.dart';

@freezed
class ResultNetwork<T> with _$ResultNetwork {
  const factory ResultNetwork.failed(ErrorType type, String message) =
      FailedNetwork;
  const factory ResultNetwork.success(T data) = SuccessNetwork;
}
