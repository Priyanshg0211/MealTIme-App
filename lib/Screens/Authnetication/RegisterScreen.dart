import 'package:flutter/material.dart';
import 'package:mealtime/Screens/Authnetication/introauthscreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => authintroscreen()));
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Color(0xff475569),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Register",
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff042628),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(right: 250),
                child: Text(
                  'First Name',
                  style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff042628),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: TextFormField(
                  cursorColor: Color(0xff042628),
                  decoration: InputDecoration(
                    hintText: 'John',
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
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 250),
                child: Text(
                  'Last Name',
                  style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff042628),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: TextFormField(
                  cursorColor: Color(0xff042628),
                  decoration: InputDecoration(
                    hintText: 'Doe',
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
              SizedBox(
                height: 20,
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
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 260),
                child: Text(
                  'Password',
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
                  cursorColor: Color(0xff042628),
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
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
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 210),
                child: Text(
                  'Confirm Password',
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
                  cursorColor: Color(0xff042628),
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
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
              SizedBox(
                height: 20,
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
                  onPressed: () {},
                  child: Text(
                    'Register',
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
