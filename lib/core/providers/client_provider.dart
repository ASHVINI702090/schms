import 'package:appwrite/appwrite.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final clientProvider = Provider<Client>((ref) {
  Client client = Client();
  client
      .setEndpoint('https://cloud.appwrite.io/v1')
      .setProject('664b8362000cc5c8ed46')
      .setSelfSigned(
          status:
              true); // For self signed certificates, only use for development

  return client;
});


