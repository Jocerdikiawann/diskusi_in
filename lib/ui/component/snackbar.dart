import 'package:flutter/material.dart';

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
}
