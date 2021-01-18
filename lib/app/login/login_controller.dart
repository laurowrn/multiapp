import 'package:flutter/material.dart';

class LoginController {
  bool doLogin(String email, String password, BuildContext context) {
    if (email == LoginData.email && password == LoginData.password) {
      Navigator.of(context).pushReplacementNamed('/home');
      return true;
    }
    return false;
  }
}

class LoginData {
  static final String email = '123@abc.com';
  static final String password = '123456';
}
