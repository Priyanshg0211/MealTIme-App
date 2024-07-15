import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import '../Model/model.dart';

abstract class HomePageRepository {
  Future<dynamic> MealAI(String prompt);
}

class HomePageRepo extends HomePageRepository {
  @override
  Future<dynamic> MealAI(String prompt) async {
    try {
      final response = await http.post(
        Uri.parse('https://api.openai.com/v1/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${dotenv.env['token']}'
        },
        body: jsonEncode(
          {
            "model": "gpt-3.5-turbo-instruct",
            "prompt": "Create a recipe from a list of ingredients: \n$prompt",
            "max_tokens": 250,
            "temperature": 0.7,
            "top_p": 1,
          },
        ),
      );
      print(response.body);
      return ResponseModel.fromJson(response.body).choices?[0]['text'];
    } catch (e) {
      return e.toString();
    }
  }
}