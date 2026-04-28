import 'package:food_delivery/json/auth/data_models/auth_data.dart';
import 'package:food_delivery/json/auth/repositories/repositories/auth_repository.dart';
import 'package:food_delivery/json/auth/datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource ds;

  AuthRepositoryImpl(this.ds);

  @override
  Future<AuthResponse> sendOtp(String email) {
    return ds.sendOtp(email);
  }

  @override
  Future<AuthResponse> verifyOtp(String otpId, String otp) {
    return ds.verifyOtp(otpId, otp);
  }
}
