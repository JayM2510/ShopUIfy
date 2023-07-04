import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';


   class GoogleSignInHandler {
   static final GoogleSignIn _googleSignIn = GoogleSignIn();
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static Future<void> handleSignIn(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
      final User? user = userCredential.user;

      if (user != null) {
        // User signed in successfully
        Navigator.pushReplacementNamed(context, '/home'); // Replace '/home' with the desired route for your home screen
      } else {
        // Handle sign-in error
      }
    } catch (error) {
      // Handle sign-in error
      print("Sign-in with Google failed: $error");
    }
  }
}
