import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mealtime/Screens/Homescreen/Homescreen.dart';

class MealAI extends StatefulWidget {
  const MealAI({super.key});

  @override
  State<MealAI> createState() => _MealAIState();
}

class _MealAIState extends State<MealAI> {
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
              "Meal AI",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15,top: 15),
            child: Text(
              "Find the best reciep\nfor cooking!",
              style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff0A2533)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: TextFormField(
                  cursorColor: Color(0xff042628),
                  decoration: InputDecoration(
                    hintText: 'Enter the ingredient here....',
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
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("pressed");
                },
                child: Container(
                  height: 62,
                  width: 62,
                  child: Image.asset("assets/images/button.png"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 50,
              width: MediaQuery.sizeOf(context).width * 0.9,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff042628),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                onPressed: () {
                  print("pressed");
                },
                child: Text(
                  'Create Reciepe',
                  style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
