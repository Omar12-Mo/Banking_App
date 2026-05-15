import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthExceptions implements Exception {
  final String message;
  const FirebaseAuthExceptions(this.message);

  factory FirebaseAuthExceptions.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const FirebaseAuthExceptions('The email address is not valid.');
      case 'user-not-found':
        return const FirebaseAuthExceptions('No user found with this email.');
      case 'wrong-password':
        return const FirebaseAuthExceptions('Incorrect password.');
      case 'email-already-in-use':
        return const FirebaseAuthExceptions('This email is already in use.');
      case 'weak-password':
        return const FirebaseAuthExceptions('Password is too weak, use at least 6 characters.');
      case 'user-disabled':
        return const FirebaseAuthExceptions('This account has been disabled.');
      case 'network-request-failed':
        return const FirebaseAuthExceptions('Check your internet connection.');
      case 'too-many-requests':
        return const FirebaseAuthExceptions('Too many attempts, please try again later.');
      case 'invalid-credential':
        return const FirebaseAuthExceptions('Credentials are invalid or expired.');
      case 'session-cookie-expired':
        return const FirebaseAuthExceptions('Session expired, please sign in again.');
      case 'requires-recent-login':
        return const FirebaseAuthExceptions('This action requires re-authentication.');
      case 'account-exists-with-different-credential':
        return const FirebaseAuthExceptions('An account already exists with a different sign-in method.');
      case 'credential-already-in-use':
        return const FirebaseAuthExceptions('These credentials are already linked to another account.');
      default:
        return const FirebaseAuthExceptions('An unexpected error occurred, please try again.');
    }
  }

  static FirebaseAuthExceptions handleException(Object e) {
    if (e is FirebaseAuthException) {
      return FirebaseAuthExceptions.fromCode(e.code);
    }
    return const FirebaseAuthExceptions('An unexpected error occurred.');
  }

  @override
  String toString() => message;
}