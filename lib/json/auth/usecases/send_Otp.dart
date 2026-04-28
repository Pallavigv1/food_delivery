import 'package:food_delivery/json/auth/data_models/auth_data.dart';
import 'package:food_delivery/json/auth/repositories/repositories/auth_repository.dart';

class SendOtp {
  final AuthRepository repo;

  SendOtp(this.repo);

  Future<AuthResponse> call(String email) async {
    return await repo.sendOtp(email);
  }
}
