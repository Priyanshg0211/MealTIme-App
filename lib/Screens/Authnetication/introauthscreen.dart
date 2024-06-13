import 'package:flutter/material.dart';

class authintroscreen extends StatefulWidget {
  const authintroscreen({super.key});

  @override
  State<authintroscreen> createState() => _authintroscreenState();
}

class _authintroscreenState extends State<authintroscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Image.asset("assets/images/loginbg.png"),
      ),
    );
  }
}