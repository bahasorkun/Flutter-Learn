import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/auth_repo.dart';

final authControllerProvider = Provider<AuthController>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(authRepository: authRepository);
});

class AuthController {
  final AuthRepository authRepository;

  AuthController({required this.authRepository});

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    return authRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
