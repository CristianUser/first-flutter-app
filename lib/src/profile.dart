import 'package:flutter/material.dart';
import 'package:my_app/src/login.dart';
import 'package:my_app/src/sign_in.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen();

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}


class _ProfileScreenState extends State<ProfileScreen> {
  
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Center(
              child: RaisedButton(
                textTheme: ButtonTextTheme.primary,
                child: Text('Sign Out'),
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginScreen();}), ModalRoute.withName('/'));
                },
              ),
            )

          ],
        )
      )
    );
  }
}