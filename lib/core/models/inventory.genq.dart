part of 'inventory.dart';

mixin _$Inventory {
  String get id => throw UnimplementedError();
  String get productId => throw UnimplementedError();
  int get quantityInStock => throw UnimplementedError();
  String get warehouseLocation => throw UnimplementedError();

  $InventoryCopyWith get copyWith => throw UnimplementedError();
}

class _Inventory implements Inventory {
  @override
  final String id;

  @override
  final String productId;

  @override
  final int quantityInStock;

  @override
  final String warehouseLocation;

  _Inventory({
    required this.id,
    required this.productId,
    required this.quantityInStock,
    required this.warehouseLocation,
  });

  @override
  $InventoryCopyWith get copyWith => _$InventoryCopyWithImpl(this);

  @override
  String toString() {
    return "Inventory(id: $id, productId: $productId, quantityInStock: $quantityInStock, warehouseLocation: $warehouseLocation)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Inventory) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!identical(other.productId, productId) && other.productId != productId) return false;
    if (!identical(other.quantityInStock, quantityInStock) && other.quantityInStock != quantityInStock) return false;
    if (!identical(other.warehouseLocation, warehouseLocation) && other.warehouseLocation != warehouseLocation) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      productId,
      quantityInStock,
      warehouseLocation,
    );
  }
}

abstract class $InventoryCopyWith {
  Inventory call({
    String id,
    String productId,
    int quantityInStock,
    String warehouseLocation,
  });
}

class _$InventoryCopyWithImpl implements $InventoryCopyWith {
  final _$Inventory value;

  _$InventoryCopyWithImpl(this.value);

  @override
  Inventory call({
    Object? id = genq,
    Object? productId = genq,
    Object? quantityInStock = genq,
    Object? warehouseLocation = genq,
  }) {
    return Inventory(
      id: id == genq ? value.id : id as String,
      productId: productId == genq ? value.productId : productId as String,
      quantityInStock: quantityInStock == genq ? value.quantityInStock : quantityInStock as int,
      warehouseLocation: warehouseLocation == genq ? value.warehouseLocation : warehouseLocation as String,
    );
  }
}

Inventory $InventoryFromJson(Map<String, dynamic> json) {
  return Inventory(
    id: json['id'] as String,
    productId: json['productId'] as String,
    quantityInStock: (json['quantityInStock'] as num).toInt(),
    warehouseLocation: json['warehouseLocation'] as String,
  );
}

Map<String, dynamic> $InventoryToJson(Inventory obj) {
  return {
    'id': obj.id,
    'productId': obj.productId,
    'quantityInStock': obj.quantityInStock,
    'warehouseLocation': obj.warehouseLocation,
  };
}