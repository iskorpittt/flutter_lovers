import 'package:flutter_lovers/model/user_model.dart';
import 'package:flutter_lovers/services/auth_base.dart';

class FakeAuthenticationService implements AuthBase {
  String userID = "123123123123123213123123123";

  @override
  Future<User> currentUser() async {
    return await Future.value(User(userID: userID));
  }

  @override
  Future<bool> signOut() {
    return Future.value(true);
  }

  @override
  Future<User> singInAnonymously() async {
    return await Future.delayed(
        Duration(seconds: 2), () => User(userID: userID));
  }
}
