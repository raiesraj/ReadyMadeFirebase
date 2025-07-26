class ItemModel {
  final String name;

  ItemModel({required this.name});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}
