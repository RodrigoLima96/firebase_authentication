import 'package:dartz/dartz.dart';

import '/app/modules/auth/sign_up/external/interfaces/interfaces.dart';

import '/app/core/errors/errors.dart';
import '/app/core/entities/entities.dart';

import '/app/modules/auth/sign_up/infra/repositories/repositories.dart';

import '/app/modules/auth/sign_up/domain/entities/entities.dart';

class SignUpRepository implements ISignUpRepository {
  final IFirebaseDatasource firebaseDatasource;

  SignUpRepository({required this.firebaseDatasource});

  @override
  Future<Either<Failure, LoggedUserInfo>> signUpUser(
      {required SignUpEntity signUpEntity}) async {
    return await firebaseDatasource.signUpUserFirebase(
      name: signUpEntity.name,
      email: signUpEntity.email,
      password: signUpEntity.password,
    );
  }
}
