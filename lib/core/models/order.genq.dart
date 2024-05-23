part of 'order.dart';

mixin _$Order {
  String get id => throw UnimplementedError();
  DateTime get orderDate => throw UnimplementedError();
  String get customerName => throw UnimplementedError();
  String get customerAddress => throw UnimplementedError();
  String get customerEmail => throw UnimplementedError();
  String get customerPhone => throw UnimplementedError();
  String get status => throw UnimplementedError();

  $OrderCopyWith get copyWith => throw UnimplementedError();
}

class _Order implements Order {
  @override
  final String id;

  @override
  final DateTime orderDate;

  @override
  final String customerName;

  @override
  final String customerAddress;

  @override
  final String customerEmail;

  @override
  final String customerPhone;

  @override
  final String status;

  _Order({
    required this.id,
    required this.orderDate,
    required this.customerName,
    required this.customerAddress,
    required this.customerEmail,
    required this.customerPhone,
    required this.status,
  });

  @override
  $OrderCopyWith get copyWith => _$OrderCopyWithImpl(this);

  @override
  String toString() {
    return "Order(id: $id, orderDate: $orderDate, customerName: $customerName, customerAddress: $customerAddress, customerEmail: $customerEmail, customerPhone: $customerPhone, status: $status)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Order) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!identical(other.orderDate, orderDate) && other.orderDate != orderDate) return false;
    if (!identical(other.customerName, customerName) && other.customerName != customerName) return false;
    if (!identical(other.customerAddress, customerAddress) && other.customerAddress != customerAddress) return false;
    if (!identical(other.customerEmail, customerEmail) && other.customerEmail != customerEmail) return false;
    if (!identical(other.customerPhone, customerPhone) && other.customerPhone != customerPhone) return false;
    if (!identical(other.status, status) && other.status != status) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      orderDate,
      customerName,
      customerAddress,
      customerEmail,
      customerPhone,
      status,
    );
  }
}

abstract class $OrderCopyWith {
  Order call({
    String id,
    DateTime orderDate,
    String customerName,
    String customerAddress,
    String customerEmail,
    String customerPhone,
    String status,
  });
}

class _$OrderCopyWithImpl implements $OrderCopyWith {
  final _$Order value;

  _$OrderCopyWithImpl(this.value);

  @override
  Order call({
    Object? id = genq,
    Object? orderDate = genq,
    Object? customerName = genq,
    Object? customerAddress = genq,
    Object? customerEmail = genq,
    Object? customerPhone = genq,
    Object? status = genq,
  }) {
    return Order(
      id: id == genq ? value.id : id as String,
      orderDate: orderDate == genq ? value.orderDate : orderDate as DateTime,
      customerName: customerName == genq ? value.customerName : customerName as String,
      customerAddress: customerAddress == genq ? value.customerAddress : customerAddress as String,
      customerEmail: customerEmail == genq ? value.customerEmail : customerEmail as String,
      customerPhone: customerPhone == genq ? value.customerPhone : customerPhone as String,
      status: status == genq ? value.status : status as String,
    );
  }
}

Order $OrderFromJson(Map<String, dynamic> json) {
  return Order(
    id: json['id'] as String,
    orderDate: DateTime.parse(json['orderDate']),
    customerName: json['customerName'] as String,
    customerAddress: json['customerAddress'] as String,
    customerEmail: json['customerEmail'] as String,
    customerPhone: json['customerPhone'] as String,
    status: json['status'] as String,
  );
}

Map<String, dynamic> $OrderToJson(Order obj) {
  return {
    'id': obj.id,
    'orderDate': obj.orderDate.toIso8601String(),
    'customerName': obj.customerName,
    'customerAddress': obj.customerAddress,
    'customerEmail': obj.customerEmail,
    'customerPhone': obj.customerPhone,
    'status': obj.status,
  };
}