import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mealtime/Screens/Authnetication/LoginScreen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String email = "";
  TextEditingController emailcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
        "Password Reset Email has been sent !",
        style: TextStyle(fontSize: 15.0),
      )));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "No user found for that email.",
          style: TextStyle(fontSize: 15.0),
        )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xff475569),
          ),
        ),
      ),
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff042628),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "No worries! Enter your email address below and we\nwill send you a code to reset password.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff475569),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(right: 280),
                child: Text(
                  'E-mail',
                  style: TextStyle(
                      fontFamily: 'SofiaPro',
                      color: Color(0xff1E293B),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: TextFormField(
                  controller: emailcontroller,
                  cursorColor: Color(0xff042628),
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
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
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 15,
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
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        email = emailcontroller.text;
                      });
                      resetPassword();
                      // Delay for 10 seconds before redirecting to login page
                      Future.delayed(Duration(seconds: 10), () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      });
                    }
                  },
                  child: Text(
                    'Send Link',
                    style: TextStyle(
                        fontFamily: 'SofiaPro',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
