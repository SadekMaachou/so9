// lib/auth/data/auth_providers.dart

import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod/riverpod.dart';
import 'auth_state.dart';
import '../domain/auth_use_case.dart';

final googleSignInProvider = Provider<GoogleSignIn>((ref) {
  return GoogleSignIn(
    scopes: ['email'],
  );
});

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  final googleSignIn = ref.watch(googleSignInProvider);
  return AuthStateNotifier(googleSignIn);
});

final authUseCaseProvider = Provider<AuthUseCase>((ref) {
  final authStateNotifier = ref.watch(authStateProvider.notifier);
  return AuthUseCase(authStateNotifier);
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  final GoogleSignIn _googleSignIn;

  AuthStateNotifier(this._googleSignIn) : super(AuthState());

  Future<void> signIn() async {
    state = state.copyWith(isLoading: true);
    try {
      final user = await _googleSignIn.signIn();
      state = state.copyWith(user: user, isLoading: false);
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString(), isLoading: false);
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    state = state.copyWith(user: null);
  }
}
