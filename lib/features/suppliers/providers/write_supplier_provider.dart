import 'package:appwrite/appwrite.dart';
import 'package:chms/core/constants.dart';
import 'package:chms/core/models/suppli.dart';
import 'package:chms/core/providers/database_provider.dart';
import 'package:chms/features/suppliers/models/write_supplier_state.dart';
import 'package:chms/features/suppliers/providers/suppliers_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'write_supplier_provider.g.dart';

@riverpod
class WriteSupplier extends _$WriteSupplier {
  @override
  WriteSupplierState build([Supplier? supplier]) {
    return WriteSupplierState(
      loading: false,
      supplier: supplier ??
          Supplier(
            id: '',
            name: '',
            contactInformation: '',
            address: '',
            email: '',
            phone: '',
          ),
    );
  }

  void nameChanged(String name) {
    state = state.copyWith(supplier: state.supplier.copyWith(name: name));
  }

  void contactInformationChanged(String contactInformation) {
    state = state.copyWith(
        supplier:
            state.supplier.copyWith(contactInformation: contactInformation));
  }

  void addressChanged(String address) {
    state = state.copyWith(supplier: state.supplier.copyWith(address: address));
  }

  void emailChanged(String email) {
    state = state.copyWith(supplier: state.supplier.copyWith(email: email));
  }

  void phoneChanged(String phone) {
    state = state.copyWith(supplier: state.supplier.copyWith(phone: phone));
  }

  Future<void> write() async {
    try {
      state = state.copyWith(loading: true);

      final db = ref.read(databaseProvider);

      if (state.supplier.id.isEmpty) {
        await db.createDocument(
          databaseId: kschms,
          collectionId: ksuppliers,
          documentId: ID.unique(),
          data: $SupplierToJson(state.supplier)..remove('id'),
        );
      } else {
        await db.updateDocument(
          databaseId: kschms,
          collectionId: ksuppliers,
          documentId: state.supplier.id,
          data: $SupplierToJson(state.supplier)..remove('id'),
        );
      }
      ref.refresh(suppliersProvider);
    } on AppwriteException catch (e) {
      state = state.copyWith(loading: false);
      return Future.error(e.message ?? e.toString());
    }
  }
}
