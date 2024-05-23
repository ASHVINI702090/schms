import 'package:chms/core/providers/account_provider.dart';
import 'package:chms/features/auth/models/auth_state.dart';
import 'package:chms/features/auth/providers/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  AuthState build() {
    return AuthState(email: '', password: '', loading: false);
  }

  void emailChanged(String email) {
    state = state.copyWith(email: email);
  }

  void passwordChanged(String password) {
    state = state.copyWith(password: password);
  }

  Future<void> login() async {
    state = state.copyWith(loading: true);
    try {
      await ref.read(accountProvider).createEmailPasswordSession(
            email: state.email,
            password: state.password,
          );
      await ref.refresh(userProvider.future);
    } catch (e) {
      state = state.copyWith(loading: false);
      return Future.error(e);
    }
  }
}
