abstract class AuthRepository {
  Future<dynamic> sendOtp(String email);
  Future<dynamic> verifyOtp(String otp, String otpId);
}
