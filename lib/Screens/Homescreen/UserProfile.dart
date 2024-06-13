import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:mealtime/Screens/Homescreen/Homescreen.dart';
import 'package:mealtime/Screens/IntroScreen.dart';
import 'package:flutter/services.dart';

class UserProfle extends StatefulWidget {
  const UserProfle({Key? key}) : super(key: key);

  @override
  State<UserProfle> createState() => _UserProfleState();
}

class _UserProfleState extends State<UserProfle> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _signOut() async {
    await _auth.signOut(); 
    SystemNavigator.pop(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); 
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xff0A2533),
          ),
        ),
        title: Center(
          child: Container(
            margin: EdgeInsets.only(right: 40),
            child: Text(
              textAlign: TextAlign.center,
              "Account",
              style: TextStyle(
                fontFamily: 'SofiaPro',
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff0A2533),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _signOut,
          child: Text('Sign Out'),
        ),
      ),
    );
  }
}
