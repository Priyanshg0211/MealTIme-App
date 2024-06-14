import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:mealtime/Screens/Authnetication/introauthscreen.dart';
import 'package:mealtime/Screens/Homescreen/Homescreen.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late String _name;
  late String _email;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    await Future.delayed(Duration(seconds: 5));
    // Fetch user data from Firebase Auth
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      setState(() {
        _name = currentUser.displayName ?? "No Name";
        _email = currentUser.email ?? "No Email";
        _isLoading = false;
      });
    } else {
      setState(() {
        _name = "Not logged in";
        _email = "Not logged in";
        _isLoading = false;
      });
    }
  }

  Future<void> _signOutAndExitApp() async {
    await FirebaseAuth.instance.signOut(); // Sign out from Firebase Auth
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => authintroscreen()));
  }

  Future<void> _deleteAccount() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      try {
        await currentUser
            .delete(); // Delete the user account from Firebase Auth
        SystemNavigator.pop();
      } on FirebaseAuthException catch (e) {
        // Handle exceptions, such as requires-recent-login
        print(e);
      } catch (e) {
        print(e);
      }
    }
  }

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
              "Account",
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
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Name: $_name", // Display user name
                        style: TextStyle(
                            fontFamily: 'SofiaPro',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Email: $_email",
                        style: TextStyle(
                            fontFamily: 'SofiaPro',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black),
                      ),
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
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () => _signOutAndExitApp(),
                          child: Text(
                            'Sign Out',
                            style: TextStyle(
                                fontFamily: 'SofiaPro',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff042628),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                          onPressed: () => _deleteAccount(),
                          child: Text(
                            'Delete Account',
                            style: TextStyle(
                                fontFamily: 'SofiaPro',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
    );
  }
}
