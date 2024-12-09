class CartItem {
  int? id;
  int? userId;
  int? productId;
  int? quantity;

  CartItem({
    this.id,
    this.userId,
    this.productId,
    this.quantity,
  });

  // Từ JSON sang Model
  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'],
      userId: json['user_id'],
      productId: json['product_id'],
      quantity: json['quantity'],


    );
  }

  // Từ Model sang JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'product_id': productId,
      'quantity': quantity,

    };
  }
}