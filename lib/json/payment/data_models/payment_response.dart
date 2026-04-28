import 'package:food_delivery/pages/payment_pay.dart';

class PaymentResponse {
  final String status;
  final String message;
  final PaymentData? data;

  PaymentResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory PaymentResponse.fromJson(Map<String, dynamic> json) {
    return PaymentResponse(
      status: json['status'],
      message: json['message'],
      data: json['data'] != null ? PaymentData.fromJson(json['data']) : null,
    );
  }
}

class PaymentData {
  final String orderId;
  final String cartId;
  final double amount;
  final String currency;
  final String paymentMethod;
  final String paymentStatus;
  final String paymentUrl;

  PaymentData({
    required this.orderId,
    required this.cartId,
    required this.amount,
    required this.currency,
    required this.paymentMethod,
    required this.paymentStatus,
    required this.paymentUrl,
  });

  factory PaymentData.fromJson(Map<String, dynamic> json) {
    return PaymentData(
      orderId: json['orderId'],
      cartId: json['cartId'],
      amount: json['amount'],
      currency: json['currency'],
      paymentMethod: json['paymentMethod'],
      paymentStatus: json['paymentStatus'],
      paymentUrl: json['paymentUrl'],
    );
  }
}
