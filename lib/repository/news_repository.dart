import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart'as http;
import 'package:news_app/model/newschannel_headlinesmodel.dart';

class NewsRepository{
  Future<NewsChannelHeadLinesModel> fetchNewsChannelHeadlinesApi()async {
    String url='https://newsapi.org/v2/everything?q=india&apiKey=7ecfeeafe7474ae385d010a8c30b0b0a';


    final response=await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if(response.statusCode==200){
      final body=jsonDecode(response.body);
     return NewsChannelHeadLinesModel.fromJson(body);
    }
   throw Exception('Error');
  }

}