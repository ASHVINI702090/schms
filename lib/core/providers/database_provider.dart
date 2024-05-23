

import 'package:appwrite/appwrite.dart';
import 'package:chms/core/providers/client_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final databaseProvider = Provider((ref)=> Databases(ref.read(clientProvider)));