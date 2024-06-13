import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:mealtime/Screens/onboardingscreen/onboardingtwo.dart';

class Onboardingone extends StatefulWidget {
  const Onboardingone({super.key});

  @override
  State<Onboardingone> createState() => _OnboardingoneState();
}

class _OnboardingoneState extends State<Onboardingone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "MealTime",
            style: TextStyle(
                fontFamily: 'SofiaPro',
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.4,
            width: MediaQuery.sizeOf(context).width,
            child: LottieBuilder.asset(
              "assets/images/onboardingone.json",
              frameRate: FrameRate.max,
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.2,
            child: Image.asset("assets/images/loaderone.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            " Welcome to Your Ultimate\nCooking Companion",
            style: TextStyle(
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 26),
            textAlign: TextAlign.center,
          ),
          Text(
            "Discover delicious recipes, personalized just\nfor you. Let's make cooking fun and\neffortless!",
            style: TextStyle(
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.w500,
                color: Color(0xff989898),
                fontSize: 15.55),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff042628),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 40),
              Container(
                height: 50,
                width: 140,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff042628),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Onboardingtwo()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontFamily: 'SofiaPro',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
