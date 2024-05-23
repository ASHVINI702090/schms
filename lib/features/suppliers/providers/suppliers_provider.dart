import 'package:chms/core/constants.dart';
import 'package:chms/core/extensions.dart';
import 'package:chms/core/models/suppli.dart';
import 'package:chms/core/providers/database_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'suppliers_provider.g.dart';

@riverpod
FutureOr<List<Supplier>> suppliers(SuppliersRef ref) {
  return ref
      .read(databaseProvider)
      .listDocuments(databaseId: kschms, collectionId: ksuppliers)
      .then(
        (v) => v.documents
            .map(
              (e) => $SupplierFromJson(e.parse),
            )
            .toList(),
      );
}
