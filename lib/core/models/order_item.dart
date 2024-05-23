import 'package:genq/genq.dart';

part 'order_item.genq.dart';

@Genq(json: true)
class OrderItem with _$OrderItem {
  factory OrderItem({
    required String id,
    required String orderId,
    required String productId,
    required int quantity,
    required int price,
  }) = _OrderItem;
}
