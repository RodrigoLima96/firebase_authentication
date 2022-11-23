import 'package:dartz/dartz.dart';

import '/app/modules/auth/sign_up/domain/entities/entities.dart';

import '/app/core/entities/logged_user_info.dart';
import '/app/core/errors/errors.dart';

abstract class ISignUpRepository {
  Future<Either<Failure, LoggedUserInfo>> signUpUser({
    required SignUpEntity signUpEntity,
  });
}
