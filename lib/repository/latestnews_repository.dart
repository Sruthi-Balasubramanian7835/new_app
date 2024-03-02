import 'package:news_app/model/latestnews_model.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

import 'package:flutter/foundation.dart';

class LatestNewsRepository{
    Future<LatestNewsModel>fetchLatestNewsChannelApi()async{
     String url='https://newsapi.org/v2/top-headlines?country=us&apiKey=ef6a7d9124f547da831f29bf5998d576';
     final response=await http.get(Uri.parse(url));
      if (kDebugMode) {
      print(response.body);
    }
    if(response.statusCode==200){
      final body=jsonDecode(response.body);
     return LatestNewsModel.fromJson(body);
    }
   throw Exception('Error');
  }
}
    