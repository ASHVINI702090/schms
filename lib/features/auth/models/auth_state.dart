// ignore_for_file: public_member_api_docs, sort_constructors_first

class AuthState {
  final String email;
  final String password;
  final bool loading;
  
  AuthState({
    required this.email,
    required this.password,
    required this.loading,
  });

  AuthState copyWith({
    String? email,
    String? password,
    bool? loading,
  }) {
    return AuthState(
      email: email ?? this.email,
      password: password ?? this.password,
      loading: loading ?? this.loading,
    );
  }
}
