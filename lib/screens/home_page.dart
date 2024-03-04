import 'package:flutter/material.dart';
import 'package:news_app/presentation/widgets/drawer_widget.dart';
import 'package:news_app/screens/allnews.dart';
import 'package:news_app/screens/latestnews.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "NewsApp",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        drawer: Drawer(
            width: width * 0.5,
            backgroundColor: Colors.white,
            child: Categories(
              child: ListView(),
            )),
        backgroundColor: ColorResources.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              const LatestNews(),
              SizedBox(
                height: height * 0.04,
              ),
              const AllNews(),
            ],
          ),
        ));
  }
}
