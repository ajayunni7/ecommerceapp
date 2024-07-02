class Product {
  final String id;
  final String brand;
  final String name;
  final String imageUrl;
  final int price;
  final int originalPrice;
  bool isFavorite;
  int quantity;

  Product({
    required this.id,
    required this.brand,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.originalPrice,
    this.isFavorite = false,
    this.quantity=1,
  });
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Product && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
