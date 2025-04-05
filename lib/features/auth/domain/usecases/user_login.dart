import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserLogin {
  final AuthRepository repository;

  UserLogin(this.repository);

  Future<Either<Failure, String>> call({
    required String email,
    required String name,
  }) async {
    return await repository.loginWithEmailPassword(email: email, name: name);
  }
}
