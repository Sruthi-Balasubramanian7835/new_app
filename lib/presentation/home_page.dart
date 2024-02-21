import 'package:flutter/material.dart';

import 'package:news_app/presentation/news_details.dart';
import 'package:news_app/presentation/widgets/card_items.dart';
import 'package:news_app/presentation/widgets/subcard_items.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexNum = 0;

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
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetResources.bookmarkicon)),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetResources.searchicon)),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetResources.notificationicon)),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssetResources.settingsicon)),
                  label: "",
                ),
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AssetResources.menuicon),
                    const Row(
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
                    ),
                    Image.asset(AssetResources.podcasticon),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardItems(img: AssetResources.robotimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.microsoftimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.robotimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.microsoftimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.robotimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.microsoftimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.robotimage),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
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
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewsDetails()));
                },
                child: const SubcardItems(
                    img: AssetResources.startup,
                    text1:
                        "Insuretech startup\nPasarpolis gets \$54\nmillion - Series B")),
            const SizedBox(
              height: 20,
            ),
            const SubcardItems(
                img: AssetResources.ipoimage,
                text1:
                    "The IPO parade\ncontinues as Wish\nfiles,Bumble targets"),
            const SizedBox(
              height: 20,
            ),
            const SubcardItems(
                img: AssetResources.hypatosimage,
                text1:
                    "The IPO parade\ncontinues as Wish\nfiles,Bumble targets")
          ],
        ),
      ),
    );
  }
}
