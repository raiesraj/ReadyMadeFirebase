import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthErrorHandler {
  static String getMessage(FirebaseAuthException e) {
    switch (e.code) {
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'user-disabled':
        return 'This user account has been disabled.';
      case 'user-not-found':
        return 'No user found for that email.';
      case 'wrong-password':
        return 'Incorrect password. Please try again.';
      case 'email-already-in-use':
        return 'This email is already in use.';
      case 'operation-not-allowed':
        return 'This sign-in method is not allowed.';
      case 'weak-password':
        return 'The password is too weak.';
      case 'too-many-requests':
        return 'Too many login attempts. Please try again later.';
      case 'network-request-failed':
        return 'No internet connection. Check your network.';
      default:
        return 'An unknown error occurred. (${e.code})';
    }
  }
}