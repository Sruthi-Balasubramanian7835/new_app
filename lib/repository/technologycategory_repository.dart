import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:news_app/model/technologycategory_model.dart';
import 'package:http/http.dart'as http;

class TechnologyCategoryRepositoryModel{
  Future<TechnologyCategoryModel>fetchTechnologyCategoryapi()async{
    String url='https://newsapi.org/v2/everything?q=technology&apiKey=ef6a7d9124f547da831f29bf5998d576';
     final response=await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if(response.statusCode==200){
      final body=jsonDecode(response.body);
     return TechnologyCategoryModel.fromJson(body);
    }
    throw Exception("error");
  }
}