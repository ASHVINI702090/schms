import 'package:genq/genq.dart';

part 'order.genq.dart';

@Genq(json: true)
class Order with _$Order {
  factory Order({
    required String id,
    required DateTime orderDate,
    required String customerName,
    required String customerAddress,
    required String customerEmail,
    required String customerPhone,
    required String status,
  }) = _Order;
}
