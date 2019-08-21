import 'package:flutter/material.dart';
import 'package:my_app/src/sign_in.dart';

class TodoScreen extends StatefulWidget {
  static const String routeName = "/todos";

  TodoScreen();

  @override
  _TodoScreenState createState() => _TodoScreenState();
}


class _TodoScreenState extends State<TodoScreen> {
  
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
        title: Text('Tareas'),
      ),
      body: Container(
        child: Center(
          child: Text('Esto es un Texto'),
        ),
      ),
    );
}