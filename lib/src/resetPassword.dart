import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const String routeName = '/reset-password';

  ResetPasswordScreen();

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}


class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  
  var textStyle = TextStyle(fontSize: 33.0, color: Colors.blue, fontWeight:
   FontWeight.w200);

  final _formKey = GlobalKey<FormState>();
  
  @override
  // TODO: implement widget
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('Recover Password'),
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
                                  child: Text('Send Request', style: TextStyle(color: Colors.white),),
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