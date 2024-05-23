


import 'package:genq/genq.dart';

part 'product.genq.dart';

@Genq(json: true)
class Product with _$Product {
  factory Product({
    required String id,
    required String name,
    required String description,
    required String category,
    required int price,
    required String supplierId,
  }) = _Product;
}