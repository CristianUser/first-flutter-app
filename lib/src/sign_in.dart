import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_app/src/login.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

String name;
String email;
String imageUrl;
bool isLoggedIn = false;

Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final AuthResult user = await _auth.signInWithCredential(credential);
  assert(!user.user.isAnonymous);
  assert(await user.user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.user.uid == currentUser.uid);

  assert(user.user.email != null);
  assert(user.user.displayName != null);
  assert(user.user.photoUrl != null);
  name = user.user.displayName;
  email = user.user.email;
  imageUrl = user.user.photoUrl;
  isLoggedIn = true;


  return 'signInWithGoogle succeeded: ${user.user}';
}

void signOutGoogle() async{
  await googleSignIn.signOut();
  isLoggedIn = false;

  print("User Sign Out");
}
