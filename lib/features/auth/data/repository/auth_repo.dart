import 'package:banking_mobile_app/core/error/fire_base_auth_exceptions.dart';
import 'package:banking_mobile_app/core/service/service_locator.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_either/dart_either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthRepo {
  //login method

  Future<Either<String, String>> login({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential user = await sl<FirebaseAuth>()
          .signInWithEmailAndPassword(email: email, password: password);
      return Right("Login successful");
    } catch (e) {
      return Left(FirebaseAuthExceptions.handleException(e).message);
    }
  }

  //register method

  Future<Either<String, String>> register({
    required String email,
    required String password,
    required String phone,
    required String name,
  }) async {
    try {
      UserCredential user = await sl<FirebaseAuth>()
          .createUserWithEmailAndPassword(email: email, password: password);
             await FirebaseFirestore.instance
        .collection('users')
        .doc(user.user!.uid).set
        ({
      'name': name,
      'phone': phone,
      'email': email,
    });
      return Right("Create account done✅");
    } catch (e) {
      return Left(FirebaseAuthExceptions.handleException(e).message);
    }
  }
}
