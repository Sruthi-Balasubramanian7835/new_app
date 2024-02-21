import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/presentation/news_details.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  Widget container_items({
    required String img,
    required String text1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20),
      child: Container(
        height: 100,
        child: Row(
          children: [
            Image.asset(img),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TECHNOLOGY",
                      style: TextStyle(
                          fontSize: 12,
                          color: ColorResources.grey,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      text1,
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorResources.black,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  int indexNum = 0;
  Widget container_item({required String img}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child: Stack(
        children: [
          Image.asset(img),
          Positioned(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "TECHNOLOGY",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.white),
                ),
                Text(
                  "3 min ago",
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.white),
                ),
              ],
            ),
          )),
          Positioned(
              top: 140,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  child: Text(
                    "Microsoft launches a\ndeepfake detector tool\nahead of US election",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ColorResources.white),
                  ),
                ),
              )),
          Positioned(
            top: 270,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 170),
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AssetResources.chaticon),
                      SizedBox(
                        width: 15,
                      ),
                      Image.asset(AssetResources.bookmarkicon),
                    ],
                  )),
                ),
                Image.asset(AssetResources.arrowicon),
              ],
            ),
          )
        ],
      ),
      height: 300,
      width: 300,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorResources.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 70),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomNavigationBar(
              selectedItemColor: ColorResources.black,
              unselectedItemColor: ColorResources.grey,
              currentIndex: indexNum,
              onTap: (int index) {
                setState(() {
                  indexNum = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetResources.homeicon)),
                    label: "",
                    backgroundColor: ColorResources.argb),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetResources.bookmarkicon)),
                    label: "",
                    backgroundColor: ColorResources.argb),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetResources.searchicon)),
                    label: "",
                    backgroundColor: ColorResources.argb),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage(AssetResources.notificationicon)),
                    label: "",
                    backgroundColor: ColorResources.argb),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetResources.settingsicon)),
                    label: "",
                    backgroundColor: ColorResources.argb),
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AssetResources.menuicon),
                    Container(
                        child: Row(
                      children: [
                        Text(
                          "News",
                          style: TextStyle(
                              color: ColorResources.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                        ),
                        Text(
                          "App",
                          style: TextStyle(
                              color: ColorResources.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                      ],
                    )),
                    Image.asset(AssetResources.podcasticon),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      container_item(img: AssetResources.robotimage),
                      SizedBox(
                        width: 5,
                      ),
                      container_item(img: AssetResources.microsoftimage),
                      SizedBox(
                        width: 5,
                      ),
                      container_item(img: AssetResources.robotimage),
                      SizedBox(
                        width: 5,
                      ),
                      container_item(img: AssetResources.microsoftimage),
                      SizedBox(
                        width: 5,
                      ),
                      container_item(img: AssetResources.robotimage),
                      SizedBox(
                        width: 5,
                      ),
                      container_item(img: AssetResources.microsoftimage),
                      SizedBox(
                        width: 5,
                      ),
                      container_item(img: AssetResources.robotimage),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest News",
                      style: TextStyle(
                          color: ColorResources.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 12),
                    ),
                    Image.asset(AssetResources.navigateicon)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => News_Details()));
              },
              child: container_items(
                img: AssetResources.startup,
                text1:
                    "Insuretech startup\nPasarpolis gets \$54\nmillion - Series B",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            container_items(
              img: AssetResources.ipoimage,
              text1: "The IPO parade\ncontinues as Wish\nfiles,Bumble targets",
            ),
            SizedBox(
              height: 20,
            ),
            container_items(
              img: AssetResources.hypatosimage,
              text1: "Hypatos gets \$11.8M\nfor a deep learning\napproach",
            ),
          ],
        ),
      ),
    );
  }
}
