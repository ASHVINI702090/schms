import 'package:genq/genq.dart';

part 'shipment.genq.dart';

@Genq(json: true)
class Shipment with _$Shipment {
  factory Shipment({
    required String id,
    required String orderId,
    required DateTime shipmentDate,
    required String carrier,
    required String trackingNumber,
    required String status,
  }) = _Shipment;
}
