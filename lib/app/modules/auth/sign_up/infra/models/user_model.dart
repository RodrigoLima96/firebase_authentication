import '/app/core/entities/entities.dart';

class UserModel extends LoggedUserInfo {
  UserModel({required String name, required String email})
      : super(name: name, email: email);
}
