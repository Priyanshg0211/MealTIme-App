import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mealtime/Screens/onboardingscreen/onboardingfive.dart';

class onboardingfour extends StatefulWidget {
  const onboardingfour({super.key});

  @override
  State<onboardingfour> createState() => _onboardingfourState();
}

class _onboardingfourState extends State<onboardingfour> {
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
              "assets/images/onboardingfour.json",
              frameRate: FrameRate.max,
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.2,
            child: Image.asset("assets/images/loaderfour.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Enhance Your\nKitchen Experience",
            style: TextStyle(
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 26),
            textAlign: TextAlign.center,
          ),
          Text(
            "Discover top-rated kitchen tools and\ningredients. We recommend the best\nproducts to elevate your cooking.",
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
              Container(
                height: 50,
                width: 140,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          fontFamily: 'SofiaPro',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ),
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
                              builder: (context) => onboarindfive()));
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
