import 'package:flutter/material.dart';
import 'package:news_app/screens/allnews.dart';
import 'package:news_app/screens/latestnews.dart';

import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "NewsApp",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Image.asset(AssetResources.menuicon))
          ],
        ),
        backgroundColor: ColorResources.white,
        body: SingleChildScrollView(
         
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.02,
                ),
                const LatestNews(),
                SizedBox(
                  height: height * 0.02,
                ),
                const AllNews(),
              ],
            ),
          ),
        ));
  }
}
