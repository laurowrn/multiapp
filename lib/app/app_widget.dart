import 'package:flutter/material.dart';
import 'package:multiapp/app/home/home_page.dart';

import 'login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
      initialRoute: '/',
    );
  }
}
