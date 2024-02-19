import 'package:flutter/material.dart';
import 'package:news_app/presentation/clip_path.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: Color.fromARGB(255, 231, 230, 230),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          child: BottomNavigationBar(
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              currentIndex: indexNum,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                setState(() {
                  indexNum = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/home_icon.png")),
                    label: ""),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage("assets/images/bookmark_icon.png")),
                    label: ""),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage("assets/images/search_icon.png")),
                    label: ""),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage("assets/images/notification_icon.png")),
                    label: ""),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage("assets/images/settings_icon.png")),
                    label: ""),
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
                    Image.asset("assets/images/menu_icon.png"),
                    Container(
                        child: Row(
                      children: [
                        Text(
                          "News",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                        ),
                        Text(
                          "App",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 16),
                        ),
                      ],
                    )),
                    Image.asset("assets/images/podcast_icon.png"),
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
                            Image.asset("assets/images/robot_image.png"),
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
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "3 min ago",
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
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
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "deepfake detector tool",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "ahead of US election",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
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
                                            "assets/images/chat_icon.png"),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            "assets/images/bookmark_icon.png"),
                                      ],
                                    )),
                                  ),
                                  Image.asset("assets/images/arrow_icon.png"),
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
                            Image.asset("assets/images/microsoft_image.png"),
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
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "3 min ago",
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
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
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "deepfake detector tool",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "ahead of US election",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
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
                                            "assets/images/chat_icon.png"),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            "assets/images/bookmark_icon.png"),
                                      ],
                                    )),
                                  ),
                                  Image.asset("assets/images/arrow_icon.png"),
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
                            Image.asset("assets/images/robot_image.png"),
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
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "3 min ago",
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
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
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "deepfake detector tool",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "ahead of US election",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
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
                                            "assets/images/chat_icon.png"),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            "assets/images/bookmark_icon.png"),
                                      ],
                                    )),
                                  ),
                                  Image.asset("assets/images/arrow_icon.png"),
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
                            Image.asset("assets/images/microsoft_image.png"),
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
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "3 min ago",
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
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
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "deepfake detector tool",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "ahead of US election",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
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
                                            "assets/images/chat_icon.png"),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                            "assets/images/bookmark_icon.png"),
                                      ],
                                    )),
                                  ),
                                  Image.asset("assets/images/arrow_icon.png"),
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
                          color: Colors.black,
                          fontWeight: FontWeight.w200,
                          fontSize: 12),
                    ),
                    Image.asset("assets/images/navigate_icon.png")
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
                    Image.asset("assets/images/start_up.png"),
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
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Insuretech startup",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "PasarPolis gets \$54 ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "million - Series B ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
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
                    Image.asset("assets/images/ipo_image.png"),
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
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "The IPO parade",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "continues as Wish ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "files,Bumble targets ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
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
                    Image.asset("assets/images/hypatos_image.png"),
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
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Hypatos gets \$11.8M",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "for a deep learning ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "approach ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
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
