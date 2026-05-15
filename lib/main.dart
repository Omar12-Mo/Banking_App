import 'package:banking_mobile_app/App/my_app.dart';
import 'package:banking_mobile_app/core/database/cache/cache_helper.dart';
import 'package:banking_mobile_app/core/service/service_locator.dart';
import 'package:banking_mobile_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServicelacotor();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await sl<CacheHelper>().init();
  runApp(const MyApp());
}
