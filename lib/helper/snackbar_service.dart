import 'package:flutter/material.dart';

class SnackbarService {
  static final GlobalKey<ScaffoldMessengerState> _messengerKey =
  GlobalKey<ScaffoldMessengerState>();

  static GlobalKey<ScaffoldMessengerState> get messengerKey => _messengerKey;

  static void showSnackbar(String message, {Color? backgroundColor}) {
    final messenger = _messengerKey.currentState;
    if (messenger != null) {
      messenger.showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: backgroundColor ?? Colors.black87,
        ),
      );
    }
  }

  static void showSuccess(String message) {
    showSnackbar(message, backgroundColor: Colors.green);
  }

  static void showError(String message) {
    showSnackbar(message, backgroundColor: Colors.red);
  }

  static void showInfo(String message) {
    showSnackbar(message, backgroundColor: Colors.blue);
  }
}
