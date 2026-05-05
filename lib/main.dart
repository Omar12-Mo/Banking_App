import 'package:banking_mobile_app/App/my_app.dart';
import 'package:banking_mobile_app/core/database/cache/cache_helper.dart';
import 'package:banking_mobile_app/core/service/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized;
  initServicelacotor();
 await sl<CacheHelper>().init;
  runApp(const MyApp());
}
