import 'package:chms/core/constants.dart';
import 'package:chms/features/auth/providers/auth_provider.dart';
import 'package:chms/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);
    final notifier = ref.read(authProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text(kAppName),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Login',
                style: context.style.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                )
              ),
              const SizedBox(height: 24),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                enabled: !state.loading,
                initialValue: state.email,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                onChanged: notifier.emailChanged,
              ),
              const SizedBox(height: 16),
              TextFormField(
                enabled: !state.loading,
                initialValue: state.password,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                onChanged: notifier.passwordChanged,
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: (state.email.isEmpty && state.password.isEmpty) ||
                        state.loading
                    ? null
                    : () async {
                        try {
                          await notifier.login();
                          context.go('/');
                        } catch (e) {
                          context.error(e);
                        }
                      },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
