class InventoryItem {
  final String id;
  final String name;
  final int quantity;
  final double price;

  InventoryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
  });

  factory InventoryItem.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return InventoryItem(
      id: doc.id,
      name: data['name'] ?? 'Unnamed Item',
      quantity: data['quantity'] ?? 0,
      price: (data['price'] ?? 0.0).toDouble(),
    );
  }
}
