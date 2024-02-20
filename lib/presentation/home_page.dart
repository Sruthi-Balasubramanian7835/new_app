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
  int indexNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ColorResources.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 70),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomNavigationBar(
            
              selectedItemColor:ColorResources.black,
              unselectedItemColor:ColorResources.grey,
              currentIndex: indexNum,
              onTap: (int index) {
                setState(() {
                  indexNum = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetResources.homeicon)),
                    label: "",backgroundColor:ColorResources.argb),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage(AssetResources.bookmarkicon)),
                    label: "",backgroundColor:ColorResources.argb),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage(AssetResources.searchicon)),
                    label: "",backgroundColor:ColorResources.argb),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage(AssetResources.notificationicon)),
                    label: "",backgroundColor:ColorResources.argb),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage(AssetResources.settingsicon)),
                    label: "",backgroundColor:ColorResources.argb),
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
                              color:ColorResources.black,
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
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(AssetResources.robotimage),
                            Positioned(
                                child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Microsoft launches a",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: ColorResources.white),
                                      ),
                                      Text(
                                        "deepfake detector tool",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: ColorResources.white),
                                      ),
                                      Text(
                                        "ahead of US election",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: ColorResources.white),
                                      ),
                                    ],
                                  ),
                                )),
                            Positioned(
                              top: 270,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 170),
                                    child: Container(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            AssetResources.chaticon),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            AssetResources.bookmarkicon),
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
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(AssetResources.microsoftimage),
                            Positioned(
                                child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Microsoft launches a",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: ColorResources.white),
                                      ),
                                      Text(
                                        "deepfake detector tool",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:ColorResources.white ),
                                      ),
                                      Text(
                                        "ahead of US election",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:ColorResources.white),
                                      ),
                                    ],
                                  ),
                                )),
                            Positioned(
                              top: 270,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 170),
                                    child: Container(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                           AssetResources.chaticon),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            AssetResources.bookmarkicon),
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
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(AssetResources.robotimage),
                            Positioned(
                                child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Microsoft launches a",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: ColorResources.white),
                                      ),
                                      Text(
                                        "deepfake detector tool",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:ColorResources.white),
                                      ),
                                      Text(
                                        "ahead of US election",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:ColorResources.white),
                                      ),
                                    ],
                                  ),
                                )),
                            Positioned(
                              top: 270,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 170),
                                    child: Container(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            AssetResources.chaticon),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            AssetResources.bookmarkicon),
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
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(15),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(AssetResources.microsoftimage),
                            Positioned(
                                child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        color:ColorResources.white),
                                  ),
                                ],
                              ),
                            )),
                            Positioned(
                                top: 140,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Microsoft launches a",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color:ColorResources.white),
                                      ),
                                      Text(
                                        "deepfake detector tool",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: ColorResources.white),
                                      ),
                                      Text(
                                        "ahead of US election",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: ColorResources.white),
                                      ),
                                    ],
                                  ),
                                )),
                            Positioned(
                              top: 270,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 170),
                                    child: Container(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            AssetResources.chaticon),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            AssetResources.bookmarkicon),
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
                      ),
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=>News_Details()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 20),
                child: Container(
                  height: 100,
                  // color: Colors.black,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AssetResources.startup),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          // color: Colors.amber,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TECHNOLOGY",
                                style: TextStyle(
                                    fontSize: 12,
                                    color:ColorResources.grey,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Insuretech startup",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: ColorResources.black,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                "PasarPolis gets \$54 ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: ColorResources.black,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                "million - Series B ",
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
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Container(
                height: 100,
                // color: Colors.black,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AssetResources.ipoimage),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        // color: Colors.amber,
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
                              "The IPO parade",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorResources.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "continues as Wish ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorResources.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "files,Bumble targets ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorResources.black,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Container(
                height: 100,
                // color: Colors.black,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AssetResources.hypatosimage),
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
                              "Hypatos gets \$11.8M",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorResources.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "for a deep learning ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorResources.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "approach ",
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
            ),
          ],
        ),
      ),
    );
  }
}
