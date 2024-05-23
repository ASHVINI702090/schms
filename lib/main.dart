import 'package:chms/core/constants.dart';
import 'package:chms/features/auth/providers/user_provider.dart';
import 'package:chms/features/dashboard/dashboard.dart';
import 'package:chms/features/providers/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();
  try {
    await container.read(userProvider.future);
  } catch (e) {
    debugPrint(e.toString());
  }
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: MyApp(),
    ),
  );
}

// import 'package:appwrite/appwrite.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return MaterialApp.router(
      title: kAppName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        inputDecorationTheme:  InputDecorationTheme(
          filled: true,
        ),
      ),
      routerConfig: ref.read(routerProvider),
      debugShowCheckedModeBanner: false,
    );
  }
}
