import 'package:pocketbase/pocketbase.dart';

extension ClientExceptionExtension on ClientException {
  String get errorMessage {
    var message = response["message"] ?? "";
    var data = response["data"];

    try {
      data.forEach((key, value) {
        var detailMessage = value["message"];
        if (detailMessage != null) {
          message += " ${key.toString().toUpperCase()}: $detailMessage";
        }
      });
    } catch (_) {}

    try {
      if (originalError != null) {
        message += " $originalError";
      }
    } catch (_) {}

    return message;
  }
}
