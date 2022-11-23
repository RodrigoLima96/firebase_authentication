import 'package:dartz/dartz.dart';

import '/app/core/errors/connection_error.dart';
import '/app/core/entities/logged_user_info.dart';

import '../../domain/entities/entities.dart';
import '../../domain/usecases/sign_up_usecase.dart';

import '../repositories/repositories.dart';

class SignUpUsecase implements ISignUpUsecase {
  final ISignUpRepository signUpRepository;

  SignUpUsecase({required this.signUpRepository});

  @override
  Future<Either<Failure, LoggedUserInfo>> call(
      {required SignUpEntity signUpEntity}) async {
    return await signUpRepository.signUpUser(
      signUpEntity: signUpEntity,
    );
  }
}
