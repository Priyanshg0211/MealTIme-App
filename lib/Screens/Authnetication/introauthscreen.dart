import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mealtime/Screens/Authnetication/LoginScreen.dart';
import 'package:mealtime/Screens/Authnetication/RegisterScreen.dart';

class authintroscreen extends StatefulWidget {
  const authintroscreen({super.key});

  @override
  State<authintroscreen> createState() => _authintroscreenState();
}

class _authintroscreenState extends State<authintroscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff70B9BE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.6,
            width: MediaQuery.sizeOf(context).width,
            child: Image.asset("assets/images/authinfoscreeassest.png"),
          ),
          Text(
            "Help your path to health\ngoals with happiness",
            style: TextStyle(
              fontFamily: 'SofiaPro',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width * 0.9,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff042628),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text(
                'Login',
                style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("pressed");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
            child: Text(
              "Create New Acoount",
              style: TextStyle(
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
