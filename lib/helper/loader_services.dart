import 'package:flutter/material.dart';

class LoaderService {
  static final GlobalKey<NavigatorState> _navigatorKey =
  GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  static bool _isShowing = false;

  static void showLoader() {
    if (_isShowing) return;
    _isShowing = true;

    showDialog(
      context: _navigatorKey.currentContext!,
      barrierDismissible: false,
      builder: (_) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  static void hideLoader() {
    if (!_isShowing) return;
    Navigator.of(_navigatorKey.currentContext!).pop();
    _isShowing = false;
  }
}
