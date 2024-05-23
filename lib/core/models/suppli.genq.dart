part of 'suppli.dart';

mixin _$Supplier {
  String get id => throw UnimplementedError();
  String get name => throw UnimplementedError();
  String get contactInformation => throw UnimplementedError();
  String get address => throw UnimplementedError();
  String get email => throw UnimplementedError();
  String get phone => throw UnimplementedError();

  $SupplierCopyWith get copyWith => throw UnimplementedError();
}

class _Supplier implements Supplier {
  @override
  final String id;

  @override
  final String name;

  @override
  final String contactInformation;

  @override
  final String address;

  @override
  final String email;

  @override
  final String phone;

  _Supplier({
    required this.id,
    required this.name,
    required this.contactInformation,
    required this.address,
    required this.email,
    required this.phone,
  });

  @override
  $SupplierCopyWith get copyWith => _$SupplierCopyWithImpl(this);

  @override
  String toString() {
    return "Supplier(id: $id, name: $name, contactInformation: $contactInformation, address: $address, email: $email, phone: $phone)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Supplier) return false;
    if (!identical(other.id, id) && other.id != id) return false;
    if (!identical(other.name, name) && other.name != name) return false;
    if (!identical(other.contactInformation, contactInformation) && other.contactInformation != contactInformation) return false;
    if (!identical(other.address, address) && other.address != address) return false;
    if (!identical(other.email, email) && other.email != email) return false;
    if (!identical(other.phone, phone) && other.phone != phone) return false;
    return true;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      name,
      contactInformation,
      address,
      email,
      phone,
    );
  }
}

abstract class $SupplierCopyWith {
  Supplier call({
    String id,
    String name,
    String contactInformation,
    String address,
    String email,
    String phone,
  });
}

class _$SupplierCopyWithImpl implements $SupplierCopyWith {
  final _$Supplier value;

  _$SupplierCopyWithImpl(this.value);

  @override
  Supplier call({
    Object? id = genq,
    Object? name = genq,
    Object? contactInformation = genq,
    Object? address = genq,
    Object? email = genq,
    Object? phone = genq,
  }) {
    return Supplier(
      id: id == genq ? value.id : id as String,
      name: name == genq ? value.name : name as String,
      contactInformation: contactInformation == genq ? value.contactInformation : contactInformation as String,
      address: address == genq ? value.address : address as String,
      email: email == genq ? value.email : email as String,
      phone: phone == genq ? value.phone : phone as String,
    );
  }
}

Supplier $SupplierFromJson(Map<String, dynamic> json) {
  return Supplier(
    id: json['id'] as String,
    name: json['name'] as String,
    contactInformation: json['contactInformation'] as String,
    address: json['address'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
  );
}

Map<String, dynamic> $SupplierToJson(Supplier obj) {
  return {
    'id': obj.id,
    'name': obj.name,
    'contactInformation': obj.contactInformation,
    'address': obj.address,
    'email': obj.email,
    'phone': obj.phone,
  };
}