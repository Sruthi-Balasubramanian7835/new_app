import 'package:flutter/material.dart';
import 'package:news_app/presentation/home_page.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';

class News_Details extends StatefulWidget {
  const News_Details({super.key});

  @override
  State<News_Details> createState() => _News_DetailsState();
}

class _News_DetailsState extends State<News_Details> {
  int indexNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, bottom: 70),
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
                    icon: ImageIcon(AssetImage(AssetResources.chaticon)),
                    label: "",
                    backgroundColor: ColorResources.argb),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetResources.bookmarkicon)),
                    label: "",
                    backgroundColor: ColorResources.argb),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetResources.arrowicon)),
                    label: "",
                    backgroundColor: ColorResources.argb),
              ]),
        ),
      ),
      backgroundColor: ColorResources.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home_page()));
              },
              child: Container(
                  child: Stack(
                    children: [
                      Positioned(
                          top: 20,
                          left: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(50),
                              color: ColorResources.black,
                            ),
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.arrow_back,
                              color: ColorResources.white,
                            ),
                          ))
                    ],
                  ),
                  height: 360,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            AssetResources.mainimage,
                          ),
                          fit: BoxFit.cover))),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 70,
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(50),
                                color: ColorResources.white),
                            child: Image.asset(AssetResources.avatarimage),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Samuel Newton",
                            style: TextStyle(
                                color: ColorResources.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
               
                height: 150,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                       
                          child: Text(
                            "TECHNOLOGY",
                            style: TextStyle(
                                color: ColorResources.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "To build responsibly,tech\nneeds to do more than just hire chief ethics officers",
                          style: TextStyle(
                              color: ColorResources.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    Container(
                  
                      child: Text(
                        "17 June,2023-4:49PM",
                        style: TextStyle(
                            color: ColorResources.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Divider(
                color: ColorResources.argb,
                thickness: 2.5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Text(
                    "In the last couple of years, we’ve seen\nnew teams in tech companies emerge\nthat focus on responsible innovation\ndigital well-being, AI ethics or humane\nuse. Whatever their titles, these individual\n are given the task of “leading” ethics at\n their companies.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
