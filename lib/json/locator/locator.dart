import 'package:food_delivery/json/auth/datasources/auth_remote_datasource.dart';
import 'package:food_delivery/json/auth/repositories/repositories/auth_repository.dart';
import 'package:food_delivery/json/auth/repositories/repositories/auth_repository_impl.dart';
import 'package:food_delivery/json/auth/usecases/send_Otp.dart';
import 'package:food_delivery/json/auth/usecases/verify_otp.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void init() {
  sl.registerLazySingleton(() => AuthRemoteDataSource());
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));

  sl.registerLazySingleton(() => SendOtp(sl()));
  sl.registerLazySingleton(() => VerifyOtp(sl()));
}

// for cart item

// void init(){

//   sl.registerLazySingleton(()=> Auth)
// }
