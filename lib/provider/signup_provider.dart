import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../helper/firebaseauth_error_handler.dart';
import '../helper/loader_services.dart';
import '../helper/snackbar_service.dart';

class SignUpProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signUp(
      {required String password,
      required String email,
      required BuildContext context}) async {
    try {
      LoaderService.showLoader();
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      final message = FirebaseAuthErrorHandler.getMessage(e);
      SnackbarService.showError(message);
      LoaderService.hideLoader();
    }
  }
}
