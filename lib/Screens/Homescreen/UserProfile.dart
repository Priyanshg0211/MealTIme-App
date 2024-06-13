import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late String _name; // Declare _name as late
  late String _email; // Declare _email as late
  bool _isLoading = true; // Flag to check if data is loading

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay
    // Fetch user data from Firebase Auth
    User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser!= null) {
      setState(() {
        _name = currentUser.displayName?? "No Name";
        _email = currentUser.email?? "No Email";
        _isLoading = false; // Data loaded, update flag
      });
    } else {
      setState(() {
        _name = "Not logged in";
        _email = "Not logged in";
        _isLoading = false; // Data loaded, update flag
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      body: _isLoading
         ? Center(child: CircularProgressIndicator()) // Show loading spinner while data is loading
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Name: $_name", // Display user name
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "Email: $_email", // Display user email
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
    );
  }
}
