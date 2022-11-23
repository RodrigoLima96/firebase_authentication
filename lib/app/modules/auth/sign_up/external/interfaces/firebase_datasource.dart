import 'package:dartz/dartz.dart';

import '/app/core/entities/logged_user_info.dart';
import '/app/core/errors/errors.dart';

abstract class IFirebaseDatasource {
  Future<Either<Failure, LoggedUserInfo>> signUpUserFirebase({
    required String name,
    required String email,
    required String password,
  });
}
