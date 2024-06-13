import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Login",
            style: TextStyle(
              fontFamily: 'SofiaPro',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff042628),
            ),
          ),
          Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                SizedBox(
                  height: 10,
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
                SizedBox(
                  height: 10,
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
                SizedBox(height: 5,),
                Row(
                mainAxisAlignment: MainAxisAlignment.end, 
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        print("Pressed");
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontFamily: 'SofiaPro',
                            color: Color(0xff3C9AFB),
                            fontSize: 14),
                      ),
                    ),
                  ),
                ]),
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
                      'Login',
                      style: TextStyle(
                          fontFamily: 'SofiaPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'or login with',
                  style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 14,
                    color: Color(0xff64748B),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    print("print");
                  },
                  child: Image.asset(
                    "assets/images/googleicon.png",
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
