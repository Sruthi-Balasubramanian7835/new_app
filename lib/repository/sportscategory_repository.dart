import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:news_app/model/sports_model.dart';
import 'package:http/http.dart'as http;
class SportsCategoryRepository{
  Future<SportsCategoryModel>fetchSportsCategoryapi() async {
    String url="https://newsapi.org/v2/everything?q=sports&apiKey=ef6a7d9124f547da831f29bf5998d576" ;
    final response=await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
     if(response.statusCode==200){
      final body=jsonDecode(response.body);
     return SportsCategoryModel.fromJson(body);
    }
    throw Exception("Error");
  }
}