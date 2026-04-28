class AuthResponse {
  final String status;
  final String message;
  final AuthData data;

  AuthResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      status: json['status'],
      message: json['message'],
      data: AuthData.fromJson(json['data']),
    );
  }
}

class AuthData {
  final String? otpId;
  final String? email;
  final int? expiresIn;
  final String? userId;
  final String? name;
  final String? token;
  final bool? isNewUser;

  AuthData({
    required this.otpId,
    required this.email,
    required this.expiresIn,
    required this.userId,
    required this.name,
    required this.token,
    required this.isNewUser,
  });

  factory AuthData.fromJson(Map<String, dynamic> json) {
    return AuthData(
      otpId: json['otpId'],
      email: json['email'],
      expiresIn: json['expiresIn'],
      userId: json['userId'],
      name: json['name'],
      token: json['token'],
      isNewUser: json['isNewUser'],
    );
  }
}
