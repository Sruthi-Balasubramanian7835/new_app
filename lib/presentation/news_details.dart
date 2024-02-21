import 'package:flutter/material.dart';
import 'package:news_app/presentation/home_page.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';

class NewsDetails extends StatefulWidget {
  const NewsDetails({super.key});

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  int indexNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 80, right: 70, bottom: 80),
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
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetResources.bookmarkicon)),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetResources.arrowicon)),
                  label: "",
                ),
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
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Container(
                  height: 360,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            AssetResources.mainimage,
                          ),
                          fit: BoxFit.cover)),
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
                            child: const Icon(
                              Icons.arrow_back,
                              color: ColorResources.white,
                            ),
                          ))
                    ],
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Row(
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
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Samuel Newton",
                          style: TextStyle(
                              color: ColorResources.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TECHNOLOGY",
                          style: TextStyle(
                              color: ColorResources.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
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
                    Text(
                      "17 June,2023-4:49PM",
                      style: TextStyle(
                          color: ColorResources.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Divider(
                color: ColorResources.argb,
                thickness: 2.5,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: Text(
                    "In the last couple of years, we’ve seen\nnew teams in tech companies emerge\nthat focus on responsible innovation\ndigital well-being, AI ethics or humane\nuse. Whatever their titles, these individual\nare given the task of “leading” ethics at\ntheir companies.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
