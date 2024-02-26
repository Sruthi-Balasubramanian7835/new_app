import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;

    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AssetResources.splash,
            fit: BoxFit.cover,
            height: height * .5,
          ),
          SizedBox(
            height: height * 0.04,
          ),
          Text(
            "TOP HEADLINES",
            style: GoogleFonts.anton(
                letterSpacing: .6, color: ColorResources.grey),
          ),
          const SpinKitChasingDots(
            color: ColorResources.blue,
            size: 40,
          )
        ],
      ),
    );
  }
}
