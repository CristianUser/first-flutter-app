import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/home";

  LoginScreen();

  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  
  var textStyle = TextStyle(fontSize: 33.0, color: Colors.blue, fontWeight:
   FontWeight.w200);

  final _formKey = GlobalKey<FormState>();
  
  @override
  // TODO: implement widget
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/mat-bg.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child:Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(''),
                      Center(
                        child: Text('iForget', style: textStyle,),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                labelText: 'Email'
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                labelText: 'Password'
                              ),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            ButtonTheme.bar( // make buttons use the appropriate styles for cards
                              child: ButtonBar(
                                children: <Widget>[
                                  GestureDetector(
                                    child: Text('Forgot password?'),
                                    onTap: () {
                                      Navigator.of(context).pushNamed('/reset-password');
                                    },
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Center (
                                child: RaisedButton(
                                  color: Colors.blue,
                                  onPressed: () {
                                    // Validate will return true if the form is valid, or false if
                                    // the form is invalid.
                                    if (_formKey.currentState.validate()) {
                                      // Process data.
                                    }
                                  },
                                  child: Text('Sign in', style: TextStyle(color: Colors.white),),
                                ),
                              )
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ) 
            )
          )
        ],
      )
    );
}