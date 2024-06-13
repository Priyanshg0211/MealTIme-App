import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

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

  Future<void> _signOutAndExitApp() async {
    await FirebaseAuth.instance.signOut(); // Sign out from Firebase Auth
    SystemNavigator.pop(); // Exit the app
  }

 Future<void> _deleteAccount() async {
  User? currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser!= null) {
    try {
      await currentUser.delete(); // Delete the user account from Firebase Auth
      // Close the app immediately after successful deletion
      SystemNavigator.pop(); // Exit the app
    } on FirebaseAuthException catch (e) {
      // Handle exceptions, such as requires-recent-login
      print(e);
    } catch (e) {
      // Handle general exceptions
      print(e);
    }
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
                  ElevatedButton(
                    onPressed: () => _signOutAndExitApp(),
                    child: Text('Sign Out'),
                  ),
                  ElevatedButton(
                    onPressed: () => _deleteAccount(),
                    child: Text('Delete Account'),
                  ),
                ],
              ),
            ),
    );
  }
}
