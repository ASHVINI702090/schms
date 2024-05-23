part of 'shipment.dart';

mixin _$Shipment {
  String get id => throw UnimplementedError();
  String get orderId => throw UnimplementedError();
  DateTime get shipmentDate => throw UnimplementedError();
  String get carrier => throw UnimplementedError();
  String get trackingNumber => throw UnimplementedError();
  String get status => throw UnimplementedError();

  $ShipmentCopyWith get copyWith => throw UnimplementedError();
}

class _Shipment implements Shipment {
  @override
  final String id;

  @override
  final String orderId;

  @override
  final DateTime shipmentDate;

  @override
  final String carrier;

  @override
  final String trackingNumber;

  @override
  final String status;

  _Shipment({
    required this.id,
    required this.orderId,
    required this.shipmentDate,
    required this.carrier,
    required this.trackingNumber,
    required this.status,
  });

  @override
  $ShipmentCopyWith get copyWith => _$ShipmentCopyWithImpl(this);

  @override
  String toString() {
    return "Shipment(id: $id, orderId: $orderId, shipmentDate: $shipmentDate, carrier: $carrier, trackingNumber: $trackingNumber, status: $status)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Shipment) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!identical(other.orderId, orderId) && other.orderId != orderId) return false;
    if (!identical(other.shipmentDate, shipmentDate) && other.shipmentDate != shipmentDate) return false;
    if (!identical(other.carrier, carrier) && other.carrier != carrier) return false;
    if (!identical(other.trackingNumber, trackingNumber) && other.trackingNumber != trackingNumber) return false;
    if (!identical(other.status, status) && other.status != status) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      orderId,
      shipmentDate,
      carrier,
      trackingNumber,
      status,
    );
  }
}

abstract class $ShipmentCopyWith {
  Shipment call({
    String id,
    String orderId,
    DateTime shipmentDate,
    String carrier,
    String trackingNumber,
    String status,
  });
}

class _$ShipmentCopyWithImpl implements $ShipmentCopyWith {
  final _$Shipment value;

  _$ShipmentCopyWithImpl(this.value);

  @override
  Shipment call({
    Object? id = genq,
    Object? orderId = genq,
    Object? shipmentDate = genq,
    Object? carrier = genq,
    Object? trackingNumber = genq,
    Object? status = genq,
  }) {
    return Shipment(
      id: id == genq ? value.id : id as String,
      orderId: orderId == genq ? value.orderId : orderId as String,
      shipmentDate: shipmentDate == genq ? value.shipmentDate : shipmentDate as DateTime,
      carrier: carrier == genq ? value.carrier : carrier as String,
      trackingNumber: trackingNumber == genq ? value.trackingNumber : trackingNumber as String,
      status: status == genq ? value.status : status as String,
    );
  }
}

Shipment $ShipmentFromJson(Map<String, dynamic> json) {
  return Shipment(
    id: json['id'] as String,
    orderId: json['orderId'] as String,
    shipmentDate: DateTime.parse(json['shipmentDate']),
    carrier: json['carrier'] as String,
    trackingNumber: json['trackingNumber'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> $ShipmentToJson(Shipment obj) {
  return {
    'id': obj.id,
    'orderId': obj.orderId,
    'shipmentDate': obj.shipmentDate.toIso8601String(),
    'carrier': obj.carrier,
    'trackingNumber': obj.trackingNumber,
    'status': obj.status,
  };
}