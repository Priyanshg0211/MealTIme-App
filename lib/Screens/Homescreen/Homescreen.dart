import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final int hour = DateTime.now().hour;
    String greeting;
    IconData iconData;

    if (hour >= 5 && hour < 12) {
      greeting = 'Good Morning';
      iconData = Icons.wb_sunny;
    } else if (hour >= 12 && hour < 17) {
      greeting = 'Good Afternoon';
      iconData = Icons.wb_sunny;
    } else if (hour >= 17 && hour < 20) {
      greeting = 'Good Evening';
      iconData = Icons.wb_twilight_rounded;
    } else {
      greeting = 'Good Night';
      iconData = Icons.nights_stay;
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(
              iconData,
              color: Color(0xff4D8194),
            ),
            SizedBox(width: 8), 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  greeting,
                  style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0A2533),
                  ),
                ),
                Text(
                  'Alena Sabyan', 
                  style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff0A2533),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.black,
            onPressed: () {
              print('Shopping cart icon pressed');
            },
          ),
        ],
      ),
    );
  }
}
