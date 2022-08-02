import 'package:flutter/widgets.dart';
import 'package:insta_clone/models/user.dart';
import 'package:insta_clone/resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethos _authMethos = AuthMethos();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethos.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
