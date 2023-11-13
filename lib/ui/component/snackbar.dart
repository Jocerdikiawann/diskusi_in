import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> snackbarkey =
    GlobalKey<ScaffoldMessengerState>();

extension ContextSnackbar on BuildContext {
  void errorSnackbar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
      showCloseIcon: true,
    ));
  }

  void successSnackbar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.green,
      showCloseIcon: true,
    ));
  }

  void warningSnackbar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.yellow,
      showCloseIcon: true,
    ));
  }

  void infoSnackbar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      showCloseIcon: true,
    ));
  }

  void errorSnackbarWithoutScaffold(String msg) {
    final SnackBar snackBar = SnackBar(
      content: Text(msg),
      backgroundColor: Colors.red,
      showCloseIcon: true,
    );

    snackbarkey.currentState?.showSnackBar(snackBar);
  }

  void warningSnackbarWithoutScaffold(String msg) {
    final SnackBar snackBar = SnackBar(
      content: Text(msg),
      backgroundColor: Colors.yellow,
      showCloseIcon: true,
    );
    snackbarkey.currentState?.showSnackBar(snackBar);
  }

  void successSnackbarWithoutScaffold(String msg) {
    final SnackBar snackBar = SnackBar(
      content: Text(msg),
      backgroundColor: Colors.green,
      showCloseIcon: true,
    );
    snackbarkey.currentState?.showSnackBar(snackBar);
  }

  void infoSnackbarWithoutScaffold(String msg) {
    final SnackBar snackBar = SnackBar(
      content: Text(msg),
      showCloseIcon: true,
    );
    snackbarkey.currentState?.showSnackBar(snackBar);
  }
}
