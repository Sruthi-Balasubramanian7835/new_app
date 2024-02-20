import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/presentation/home_page.dart';
import 'package:news_app/presentation/splash_screen.dart';

void main() {
   SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home:Home_page(),
    );
  }
}

