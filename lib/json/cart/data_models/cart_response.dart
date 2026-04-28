class CartResponse {
  final String status;
  final String message;
  final CartData data;

  CartResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory CartResponse.fromJson(Map<String, dynamic> json) {
    return CartResponse(
      status: json['status'],
      message: json['message'],
      data: CartData.fromJson(json['data']),
    );
  }
}

class CartData {
  final String cartId;
  final List<CartItem> items;
  final Pricing pricing;

  CartData({required this.cartId, required this.items, required this.pricing});

  factory CartData.fromJson(Map<String, dynamic> json) {
    return CartData(
      cartId: json['cartId'],
      items: (json['items'] as List).map((e) => CartItem.fromJson(e)).toList(),

      pricing: Pricing.fromJson(json['pricing']),
    );
  }
}

class CartItem {
  final String productId;
  final String name;
  final double price;
  final int quantity;
  final String? image;

  CartItem({
    required this.productId,
    required this.name,
    required this.price,
    required this.quantity,
    required this.image,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      productId: json['productId'],
      name: json['name'],
      price: json['price'],
      quantity: json['quantity'],
      image: json['image'],
    );
  }
}

class Pricing {
  final double subtotal;
  final double deliveryFee;
  final double tax;
  final double total;

  Pricing({
    required this.subtotal,
    required this.deliveryFee,
    required this.tax,
    required this.total,
  });

  factory Pricing.fromJson(Map<String, dynamic> json) {
    return Pricing(
      subtotal: json['subtotal'].toDouble(),
      deliveryFee: json['deliveryFee'].toDouble(),
      tax: json['tax'],
      total: json['total'],
    );
  }
}
