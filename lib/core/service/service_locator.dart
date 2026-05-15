import 'package:banking_mobile_app/core/database/cache/cache_helper.dart';
import 'package:banking_mobile_app/features/auth/data/repository/auth_repo.dart';
import 'package:banking_mobile_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void initServicelacotor() {
  sl.registerLazySingleton(() => CacheHelper());
  sl.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  sl.registerLazySingleton(() => AuthRepo());
  sl.registerLazySingleton(() => AuthCubit(authRepo: sl()));

  
}
