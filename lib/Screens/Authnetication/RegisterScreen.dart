import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mealtime/Screens/Authnetication/introauthscreen.dart';
import 'package:mealtime/Screens/Homescreen/Homescreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String email = "", password = "", name = "";
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    // Check if the user is already signed in
    _checkCurrentUser();
  }

  void _checkCurrentUser() async {
    User? user = _auth.currentUser;
    if (user != null) {
      // User is already signed in, navigate to the home screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  bool _obscureText = true;
  final _formkey = GlobalKey<FormState>();

  registration() async {
    if (password != null &&
        namecontroller.text != "" &&
        emailcontroller.text != "") {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "Registered Successfully",
          style: TextStyle(fontSize: 15.0),
        )));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "Password Provided is too Weak",
            style: TextStyle(fontSize: 15.0),
          )));
        } else if (e.code == "email-already-in-use") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "Account Already exists",
            style: TextStyle(fontSize: 15.0),
          )));
        }
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
          child: Form(
            key: _formkey,
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
                    'Full Name',
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
                    controller: namecontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                    cursorColor: Color(0xff042628),
                    decoration: InputDecoration(
                      hintText: 'John Doe',
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
                    controller: passwordcontroller,
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
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                    obscureText: _obscureText,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
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
                    onPressed: () {
                      {
                        print("The Button is Pressed");
                        if (_formkey.currentState!.validate()) {
                          setState(() {
                            email = emailcontroller.text;
                            name = namecontroller.text;
                            password = passwordcontroller.text;
                          });
                        }
                        registration();
                      }
                    },
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
      ),
    );
  }
}
