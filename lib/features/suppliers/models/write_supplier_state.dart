// ignore_for_file: public_member_api_docs, sort_constructors_first



import 'package:chms/core/models/suppli.dart';

class WriteSupplierState {
  final bool loading;
  final Supplier supplier;
  WriteSupplierState({
    required this.loading,
    required this.supplier,
  });

  WriteSupplierState copyWith({
    bool? loading,
    Supplier? supplier,
  }) {
    return WriteSupplierState(
      loading: loading ?? this.loading,
      supplier: supplier ?? this.supplier,
    );
  }
}
