import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mealtime/Screens/Homescreen/MealAI.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool isHeartPressed = false;

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 250),
              child: Text(
                "Featured",
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0A2533),
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 150.66,
                  aspectRatio: (MediaQuery.of(context).size.width - 50) / 97.66,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.6,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(milliseconds: 3000)),
              items: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/cardone.png"),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/cardtwo.png"),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/cardone.png"),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/images/cardtwo.png"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 250),
              child: Text(
                "Category",
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0A2533),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color(0xffF1F5F5),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Breakfast",
                        style: TextStyle(
                            fontFamily: 'SofiaPro',
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0xffF1F5F5),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Lunch",
                      style: TextStyle(
                          fontFamily: 'SofiaPro',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0xffF1F5F5),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Dinner",
                      style: TextStyle(
                          fontFamily: 'SofiaPro',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0xffF1F5F5),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Snack",
                      style: TextStyle(
                          fontFamily: 'SofiaPro',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 180),
              child: Text(
                "Popular Reciepes",
                style: TextStyle(
                  fontFamily: 'SofiaPro',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0A2533),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.35,
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: Card(
                      color: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 8), // White border
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16),
                                      bottom: Radius.circular(16)),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16),
                                      bottom: Radius.circular(16)),
                                  child: Image.asset(
                                    'assets/images/dishone.png',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: 150,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 8,
                                right: 8,
                                child: IconButton(
                                  icon: Icon(
                                    isHeartPressed
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isHeartPressed
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isHeartPressed = !isHeartPressed;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Healthy Taco Salad\nwith fresh vegetable',
                                  style: TextStyle(
                                    fontFamily: 'SofiaPro',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.local_fire_department,
                                      color: Color(0xff97A2B0),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '120 Kcal',
                                      style: TextStyle(
                                        fontFamily: 'SofiaPro',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff97A2B0),
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Icon(
                                      Icons.timelapse_rounded,
                                      color: Color(0xff97A2B0),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '20 Min',
                                      style: TextStyle(
                                        fontFamily: 'SofiaPro',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff97A2B0),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.35,
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    child: Card(
                      color: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 8), // White border
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16),
                                      bottom: Radius.circular(16)),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(16),
                                      bottom: Radius.circular(16)),
                                  child: Image.asset(
                                    'assets/images/dishtwo.png',
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: 150,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 8,
                                right: 8,
                                child: IconButton(
                                  icon: Icon(
                                    isHeartPressed
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isHeartPressed
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isHeartPressed = !isHeartPressed;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Japanese-style\nPancakes Recipe',
                                  style: TextStyle(
                                    fontFamily: 'SofiaPro',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.local_fire_department,
                                      color: Color(0xff97A2B0),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '64 Kcal',
                                      style: TextStyle(
                                        fontFamily: 'SofiaPro',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff97A2B0),
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Icon(
                                      Icons.timelapse_rounded,
                                      color: Color(0xff97A2B0),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '12 Min',
                                      style: TextStyle(
                                        fontFamily: 'SofiaPro',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff97A2B0),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home_outlined,
                  color: _selectedIndex == 0
                      ? Color(0xff70B9BE)
                      : Color(0xff97A2B0)),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.search_outlined,
                  color: _selectedIndex == 1
                      ? Color(0xff70B9BE)
                      : Color(0xff97A2B0)),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
            SizedBox(width: 60),
            IconButton(
              icon: Icon(Icons.notifications_outlined,
                  color: _selectedIndex == 2
                      ? Color(0xff70B9BE)
                      : Color(0xff97A2B0)),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.person_outlined,
                  color: _selectedIndex == 3
                      ? Color(0xff70B9BE)
                      : Color(0xff97A2B0)),
              onPressed: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff042628),
        child: Icon(Icons.restaurant_menu, color: Colors.white),
        onPressed: () {
          print('Center button pressed');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MealAI()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
