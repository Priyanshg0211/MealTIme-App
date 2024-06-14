import 'package:flutter/material.dart';
import 'package:mealtime/Screens/Data/Repositery/repo.dart';
import 'package:mealtime/Screens/Homescreen/Homescreen.dart';
import 'dart:math' as math;

class MealAI extends StatefulWidget {
  const MealAI({super.key});

  @override
  State<MealAI> createState() => _MealAIState();
}

class _MealAIState extends State<MealAI> {
  late TextEditingController controller;
  late FocusNode focusNode;
  final List<String> inputTags = [];
  String response = '';

  @override
  void initState() {
    controller = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
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
              "Meal AI",
              textAlign: TextAlign.center,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "Find the best recipe\nfor cooking!",
              style: TextStyle(
                fontFamily: 'SofiaPro',
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xff0A2533),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  autofocus: true,
                  autocorrect: true,
                  focusNode: focusNode,
                  controller: controller,
                  onFieldSubmitted: (value) {
                    if (value.trim().isNotEmpty) {
                      setState(() {
                        inputTags.add(value.trim());
                        controller.clear();
                        focusNode.requestFocus();
                      });
                    }
                  },
                  cursorColor: Color(0xff042628),
                  decoration: InputDecoration(
                    hintText: 'Enter the ingredient here....',
                    hintStyle: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Color(0xff94A3B8),
                    ),
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
              Container(
                color: Colors.cyanAccent[200],
                child: Padding(
                  padding: const EdgeInsets.all(9),
                  child: IconButton(
                    onPressed: () {
                      if (controller.text.trim().isNotEmpty) {
                        setState(() {
                          inputTags.add(controller.text.trim());
                          controller.clear();
                          focusNode.requestFocus();
                        });
                      }
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Wrap(
              children: [
                for (int i = 0; i < inputTags.length; i++)
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Chip(
                      backgroundColor:
                          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                              .withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(5.5),
                      ),
                      onDeleted: () {
                        setState(() {
                          inputTags.removeAt(i);
                        });
                      },
                      label: Text(inputTags[i]),
                      deleteIcon: const Icon(
                        Icons.close,
                        size: 20,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Text(
                  response,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff042628),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () async {
                  setState(() {
                    response = 'Thinking....';
                  });

                  var temp = await HomePageRepo().MealAI(inputTags.join(', '));

                  setState(() {
                    response = temp ?? 'No response received';
                  });
                },
                child: Text(
                  'Create Recipe',
                  style: TextStyle(
                    fontFamily: 'SofiaPro',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
