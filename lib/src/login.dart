import 'package:flutter/material.dart';
import 'package:my_app/src/home.dart';
import 'package:my_app/src/sign_in.dart';

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
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Center (
                                    child: RaisedButton(
                                      color: Colors.blue,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
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
                                FlatButton(
                                  color: Colors.transparent,
                                  textColor: Colors.blue,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.all(0.0),
                                  splashColor: Colors.blueAccent,
                                  onPressed: () {
                                    /*...*/
                                  },
                                  child: Text(
                                    'Register',
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Text('or'),
                                ),
                                _signInButton()
                              ],
                            )
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

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return HomeScreen();
          //     },
          //   ),
          // );
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage("assets/google_logo.png"), height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}