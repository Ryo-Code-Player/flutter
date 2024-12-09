import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/user.dart';
import '../providers/AuthRepositoryProviders.dart';
import '../repository/AuthRepository.dart';

class AuthStateNotifier extends StateNotifier<AuthState> {
  final AuthRepository authRepository;

  AuthStateNotifier(this.authRepository) : super(AuthState.initial());

  // Register user function
  Future<bool> registerUser(User user) async {
    state = state.copyWith(isLoading: true); // Set loading state
    try {
      await authRepository.register(user);
      state = state.copyWith(isLoading: false); // Registration success
      return true;
    } catch (e) {
      state =
          state.copyWith(isLoading: false, errorMessage: "Failed to register");
      return false;
    }
  }

  // Login user function
  Future<bool> loginUser(String email, String password) async {
    state = state.copyWith(isLoading: true); // Set loading state
    try {
      final token = await authRepository.login(email, password);
      if (token != null) {
        state = state.copyWith(
            isLoading: false, isAuthenticated: true, token: token);
        return true;
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: "Failed to login");
    }
    return false;
  }

  // Logout function
  Future<void> logout() async {
    await authRepository.logout();
    state = AuthState.initial(); // Reset state after logout
  }
}

// Auth state model to manage loading, error, and authentication state
class AuthState {
  final bool isAuthenticated;
  final bool isLoading;
  final String? token;
  final String? errorMessage;

  AuthState({
    required this.isAuthenticated,
    required this.isLoading,
    this.token,
    this.errorMessage,
  });

  factory AuthState.initial() {
    return AuthState(
      isAuthenticated: false,
      isLoading: false,
      token: null,
      errorMessage: null,
    );
  }

  // Method to update state easily
  AuthState copyWith({
    bool? isAuthenticated,
    bool? isLoading,
    String? token,
    String? errorMessage,
  }) {
    return AuthState(
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      isLoading: isLoading ?? this.isLoading,
      token: token ?? this.token,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

// AuthStateNotifierProvider to be used in the app
final authStateNotifierProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) => AuthStateNotifier(ref.read(authRepositoryProvider)),
);