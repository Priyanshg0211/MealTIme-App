import 'package:flutter/material.dart';
import 'package:mealtime/Screens/Homescreen/Homescreen.dart';

class Shoppingpage extends StatefulWidget {
  const Shoppingpage({super.key});

  @override
  State<Shoppingpage> createState() => _ShoppingpageState();
}

class _ShoppingpageState extends State<Shoppingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
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
              "Shop",
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
    );
  }
}