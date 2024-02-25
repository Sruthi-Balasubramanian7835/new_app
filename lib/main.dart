import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/presentation/home_page.dart';
import 'package:news_app/screens/splash_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home:Splash(),
    );
  }
}

