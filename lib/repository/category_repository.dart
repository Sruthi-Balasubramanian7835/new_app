import 'package:news_app/model/categories_model.dart';
import 'package:news_app/model/latestnews_model.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

import 'package:flutter/foundation.dart';

class CategoriesRepository{
    Future<CategoriesModel>fetchLatestNewsChannelApi()async{
     String url=' https://newsapi.org/v2/everything?q=general&apiKey=d499f4d68dda4a35b31cf8fbd3b084fb';
     final response=await http.get(Uri.parse(url));
      if (kDebugMode) {
      print(response.body);
    }
    if(response.statusCode==200){
      final body=jsonDecode(response.body);
     return CategoriesModel.fromJson(body);
    }
   throw Exception('Error');
  }
}
    