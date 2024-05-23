import 'package:genq/genq.dart';

part 'suppli.genq.dart';

@Genq(json: true)
class Supplier with _$Supplier {
  factory Supplier({
    @JsonKey()
    required String id,
    required String name,
    required String contactInformation,
    required String address,
    required String email,
    required String phone,
  }) = _Supplier;
}






