




import 'package:appwrite/models.dart';

extension DocumentExtension on Document {
  Map<String, dynamic> get parse  => {
    'id': $id,
    ...data,
  };
}