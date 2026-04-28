import 'package:food_delivery/json/auth/data_models/auth_data.dart';
import 'package:food_delivery/json/auth/repositories/repositories/auth_repository.dart';

class VerifyOtp {
  final AuthRepository repo;

  VerifyOtp(this.repo);

  Future<AuthResponse> call(VerifyOtpRequest request) async {
    return await repo.verifyOtp(request.otp, request.otpId);
  }
}

class VerifyOtpRequest {
  final String otpId;
  final String otp;

  VerifyOtpRequest({required this.otpId, required this.otp});
}
