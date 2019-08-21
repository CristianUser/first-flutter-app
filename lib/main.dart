import 'package:flutter/material.dart';
import 'package:my_app/src/home.dart';
import 'package:my_app/src/login.dart';
import 'package:my_app/src/profile.dart';
import 'package:my_app/src/resetPassword.dart';
import 'package:my_app/src/sign_in.dart';
import 'package:my_app/src/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  // final bool isLoggedIn = isLoggedIn;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: (isLoggedIn) ?HomeScreen(): LoginScreen(),
      routes: <String, WidgetBuilder>{
        '/profile': (BuildContext context) => ProfileScreen(),
        '/reset-password': (BuildContext context) => ResetPasswordScreen(),
        '/todo': (BuildContext context) => TodoScreen()
      },
    );
  }
}
