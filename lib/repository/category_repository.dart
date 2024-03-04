import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:news_app/model/category_model.dart';
import 'package:http/http.dart' as http;

class CategoryRepository {
  Future<CategoryModel> fetchCategoryapi(String category) async {
    String url =
        "https://newsapi.org/v2/everything?q=${category}&apiKey=7ecfeeafe7474ae385d010a8c30b0b0a";
    final response = await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return CategoryModel.fromJson(body);
    }
    throw Exception('Error');
  }
}
