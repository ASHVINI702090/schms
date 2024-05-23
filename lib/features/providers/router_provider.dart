import 'package:chms/core/models/suppli.dart';
import 'package:chms/features/auth/login_page.dart';
import 'package:chms/features/auth/providers/user_provider.dart';
import 'package:chms/features/dashboard/dashboard.dart';
import 'package:chms/features/suppliers/supplier_page.dart';
import 'package:chms/features/suppliers/write_supplier_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    initialLocation: '/',
    redirect: (context, state) {
      final user = ref.read(userProvider).asData?.value;

      if (user == null) {
        return '/login';
      }
    },
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Dashboard(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/write-supplier',
        builder: (context, state) => WriteSupplierPage(
          initial: state.extra is Supplier ? state.extra as Supplier : null,
        ),
      ),
      GoRoute(
        path: '/supplier',
        builder: (context, state) => SupplierPage(
          id: state.extra as String,
        ),
      ),
    ],
  ),
);
