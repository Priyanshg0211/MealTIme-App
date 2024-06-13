import 'package:flutter/material.dart';
import 'package:mealtime/Screens/Homescreen/Homescreen.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
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
              "Search",
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
      body: Container(
        margin: EdgeInsets.only(left: 18, top: 30),
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: TextFormField(
          cursorColor: Color(0xff042628),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search_rounded,color: Color(0xff0A2533),),
            hintText: 'Search',
            hintStyle: TextStyle(
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Color(0xff94A3B8)),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E8F0)),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E8F0)),
            ),
          ),
          keyboardType: TextInputType.name,
        ),
      ),
    );
  }
}
