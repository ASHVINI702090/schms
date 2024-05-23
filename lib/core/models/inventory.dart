import 'package:genq/genq.dart';

part 'inventory.genq.dart';

@Genq(json: true)
class Inventory with _$Inventory {
  factory Inventory({
    required String id,
    required String productId,
    required int quantityInStock,
    required String warehouseLocation,
  }) = _Inventory;
}
