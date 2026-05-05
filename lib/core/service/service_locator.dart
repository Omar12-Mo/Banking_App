import 'package:banking_mobile_app/core/database/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance();

void initServicelacotor() {
  sl.registerLazySingleton(() => CacheHelper());
}
