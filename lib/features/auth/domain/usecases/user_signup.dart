import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/core/usecases/usecase.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../entities/user.dart';



class UserSignUp implements Usecase<User, UserSignUpParams> {
  final AuthRepository repository;
  const UserSignUp(this.repository);

  @override
  Future<Either<Failure, User>> call(UserSignUpParams params) async {
    return await repository.signUpWithEmailPassword(
      email: params.email,
      password: params.password,
      name: params.name,
    );
  }
}
class UserSignUpParams {
  final String email;
  final String password;
  final String name;

  UserSignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
