import 'package:dartz/dartz.dart';

import '/app/core/entities/entities.dart';
import '/app/core/errors/errors.dart';

import '../entities/sign_up_entity.dart';

abstract class ISignUpUsecase {
  Future<Either<Failure, LoggedUserInfo>> call({
    required SignUpEntity signUpEntity,
  });
}
