import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class onboarindfive extends StatefulWidget {
  const onboarindfive({super.key});

  @override
  State<onboarindfive> createState() => _onboarindfiveState();
}

class _onboarindfiveState extends State<onboarindfive> {
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
              "assets/images/onboardingfive.json",
              frameRate: FrameRate.max,
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.2,
            child: Image.asset("assets/images/loaderfive.png"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            " New Recipes, Just\nfor You",
            style: TextStyle(
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 26),
            textAlign: TextAlign.center,
          ),
          Text(
            "Let our AI surprise you with creative meal\nideas based on what you love. Endless\nculinary inspiration awaits!",
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
              Container(
                height: 54,
                width: MediaQuery.sizeOf(context).width*0.9,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff042628),
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
      ),
    );
  }
}