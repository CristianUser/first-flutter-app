import 'package:flutter/material.dart';
import 'package:my_app/src/sign_in.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home";

  HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  
  @override
  // TODO: implement widget
  Widget build(BuildContext context) => Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      imageUrl,
                    ),
                    radius: 60,
                    backgroundColor: Colors.transparent,
                  ),
                  Text(name, style: TextStyle(color: Colors.white),)
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            ListTile(
              title: Text('Inicio'),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
              title: Text('Perfil'),
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Container(
        child: Center(
          child: Text('Esto es un Texto'),
        ),
      ),
    );
}