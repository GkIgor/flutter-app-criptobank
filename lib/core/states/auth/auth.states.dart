import 'package:flutter/material.dart';

class AuthState with ChangeNotifier {
  bool _isAuthenticated = false;

  late String _user;
  late String _password;

  void removeAuth() {
    _isAuthenticated = false;
    notifyListeners();
  }

  void addAuth(String user, String password) {
    _isAuthenticated = true;
    _password = password;
    _user = user;

    notifyListeners();
  }

  get isAuth => _isAuthenticated;
  get user => _user;

   password(String password) {
    if (password == _password) {
      return _password;
    }
    return null;
  }
}
