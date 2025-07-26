import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/helper/loader_services.dart';
import 'package:practice/helper/snackbar_service.dart';
import '../helper/firebaseauth_error_handler.dart';



class SignInProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signIn(
      {required String email,
      required password,
      required BuildContext context}) async {
    try {
      LoaderService.showLoader();

      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      final message = FirebaseAuthErrorHandler.getMessage(e);
     SnackbarService.showError(message);
     LoaderService.hideLoader();
    } catch(e){
      SnackbarService.showInfo("Something is wrong");
    }
  }
}




