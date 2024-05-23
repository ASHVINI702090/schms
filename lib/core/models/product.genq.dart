part of 'product.dart';

mixin _$Product {
  String get id => throw UnimplementedError();
  String get name => throw UnimplementedError();
  String get description => throw UnimplementedError();
  String get category => throw UnimplementedError();
  int get price => throw UnimplementedError();
  String get supplierId => throw UnimplementedError();

  $ProductCopyWith get copyWith => throw UnimplementedError();
}

class _Product implements Product {
  @override
  final String id;

  @override
  final String name;

  @override
  final String description;

  @override
  final String category;

  @override
  final int price;

  @override
  final String supplierId;

  _Product({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.price,
    required this.supplierId,
  });

  @override
  $ProductCopyWith get copyWith => _$ProductCopyWithImpl(this);

  @override
  String toString() {
    return "Product(id: $id, name: $name, description: $description, category: $category, price: $price, supplierId: $supplierId)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Product) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!identical(other.name, name) && other.name != name) return false;
    if (!identical(other.description, description) && other.description != description) return false;
    if (!identical(other.category, category) && other.category != category) return false;
    if (!identical(other.price, price) && other.price != price) return false;
    if (!identical(other.supplierId, supplierId) && other.supplierId != supplierId) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      name,
      description,
      category,
      price,
      supplierId,
    );
  }
}

abstract class $ProductCopyWith {
  Product call({
    String id,
    String name,
    String description,
    String category,
    int price,
    String supplierId,
  });
}

class _$ProductCopyWithImpl implements $ProductCopyWith {
  final _$Product value;

  _$ProductCopyWithImpl(this.value);

  @override
  Product call({
    Object? id = genq,
    Object? name = genq,
    Object? description = genq,
    Object? category = genq,
    Object? price = genq,
    Object? supplierId = genq,
  }) {
    return Product(
      id: id == genq ? value.id : id as String,
      name: name == genq ? value.name : name as String,
      description: description == genq ? value.description : description as String,
      category: category == genq ? value.category : category as String,
      price: price == genq ? value.price : price as int,
      supplierId: supplierId == genq ? value.supplierId : supplierId as String,
    );
  }
}

Product $ProductFromJson(Map<String, dynamic> json) {
  return Product(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    category: json['category'] as String,
    price: (json['price'] as num).toInt(),
    supplierId: json['supplierId'] as String,
  );
}

Map<String, dynamic> $ProductToJson(Product obj) {
  return {
    'id': obj.id,
    'name': obj.name,
    'description': obj.description,
    'category': obj.category,
    'price': obj.price,
    'supplierId': obj.supplierId,
  };
}