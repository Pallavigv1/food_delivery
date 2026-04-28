import '../data_models/auth_data.dart';

class AuthRemoteDataSource {
  Future<AuthResponse> sendOtp(String email) async {
    {
      await Future.delayed(Duration(seconds: 1));

      final json = {
        "status": "success",
        "message": "OTP sent successfully",
        "data": {"otpId": "OTP_123456", "email": email, "expiersIn": 300},
      };
      return AuthResponse.fromJson(json);
    }
  }

  Future<AuthResponse> verifyOtp(String otpId, String otp) async {
    await Future.delayed(Duration(seconds: 1));

    final json = (otp == "123456")
        ? {
            "status": "success",
            "message": "Login successful",
            "data": {
              "userId": "U123",
              "email": "user@gmail.com",
              "name": "Pallavi",
              "token": "jwt_token",
            },
          }
        : {"status": "error", "message": "Invalid OTP"};

    return AuthResponse.fromJson(json);
  }
}
