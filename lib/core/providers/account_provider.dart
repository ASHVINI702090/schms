import 'package:appwrite/appwrite.dart';
import 'package:chms/core/providers/client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final accountProvider = Provider((ref)=> Account(ref.read(clientProvider)) );