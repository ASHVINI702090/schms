import 'package:chms/core/providers/account_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final userProvider = FutureProvider(
  (ref) => ref.read(accountProvider).get(),
);
