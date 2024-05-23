part of 'order_item.dart';

mixin _$OrderItem {
  String get id => throw UnimplementedError();
  String get orderId => throw UnimplementedError();
  String get productId => throw UnimplementedError();
  int get quantity => throw UnimplementedError();
  int get price => throw UnimplementedError();

  $OrderItemCopyWith get copyWith => throw UnimplementedError();
}

class _OrderItem implements OrderItem {
  @override
  final String id;

  @override
  final String orderId;

  @override
  final String productId;

  @override
  final int quantity;

  @override
  final int price;

  _OrderItem({
    required this.id,
    required this.orderId,
    required this.productId,
    required this.quantity,
    required this.price,
  });

  @override
  $OrderItemCopyWith get copyWith => _$OrderItemCopyWithImpl(this);

  @override
  String toString() {
    return "OrderItem(id: $id, orderId: $orderId, productId: $productId, quantity: $quantity, price: $price)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OrderItem) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!identical(other.orderId, orderId) && other.orderId != orderId) return false;
    if (!identical(other.productId, productId) && other.productId != productId) return false;
    if (!identical(other.quantity, quantity) && other.quantity != quantity) return false;
    if (!identical(other.price, price) && other.price != price) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      orderId,
      productId,
      quantity,
      price,
    );
  }
}

abstract class $OrderItemCopyWith {
  OrderItem call({
    String id,
    String orderId,
    String productId,
    int quantity,
    int price,
  });
}

class _$OrderItemCopyWithImpl implements $OrderItemCopyWith {
  final _$OrderItem value;

  _$OrderItemCopyWithImpl(this.value);

  @override
  OrderItem call({
    Object? id = genq,
    Object? orderId = genq,
    Object? productId = genq,
    Object? quantity = genq,
    Object? price = genq,
  }) {
    return OrderItem(
      id: id == genq ? value.id : id as String,
      orderId: orderId == genq ? value.orderId : orderId as String,
      productId: productId == genq ? value.productId : productId as String,
      quantity: quantity == genq ? value.quantity : quantity as int,
      price: price == genq ? value.price : price as int,
    );
  }
}

OrderItem $OrderItemFromJson(Map<String, dynamic> json) {
  return OrderItem(
    id: json['id'] as String,
    orderId: json['orderId'] as String,
    productId: json['productId'] as String,
    quantity: (json['quantity'] as num).toInt(),
    price: (json['price'] as num).toInt(),
  );
}

Map<String, dynamic> $OrderItemToJson(OrderItem obj) {
  return {
    'id': obj.id,
    'orderId': obj.orderId,
    'productId': obj.productId,
    'quantity': obj.quantity,
    'price': obj.price,
  };
}