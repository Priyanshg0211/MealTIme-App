import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Onboardingthree extends StatefulWidget {
  const Onboardingthree({super.key});

  @override
  State<Onboardingthree> createState() => _OnboardingthreeState();
}

class _OnboardingthreeState extends State<Onboardingthree> {
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
              "assets/images/onboardingthree.json",
              frameRate: FrameRate.max,
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.2,
            child: Image.asset("assets/images/loaderthree.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Recipes Tailored\nto Your Taste",
            style: TextStyle(
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 26),
            textAlign: TextAlign.center,
          ),
          Text(
            "Get recipe suggestions based on your\npreferences, dietary needs, and favorite\ningredients. Cooking made personal!",
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
                height: 54,
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
                height: 54,
                width: 140,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                    /*  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Onboardingthree()));*/
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