import 'package:flutter/material.dart';
import 'package:news_app/presentation/home_page.dart';

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
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              currentIndex: indexNum,
              onTap: (int index) {
                setState(() {
                  indexNum = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/chat_icon.png")),
                    label: "",
                    backgroundColor: Color.fromARGB(255, 216, 212, 212)),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                        AssetImage("assets/images/bookmark_icon.png")),
                    label: "",
                    backgroundColor: Color.fromARGB(255, 216, 212, 212)),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/arrow_icon.png")),
                    label: "",
                    backgroundColor: Color.fromARGB(255, 216, 212, 212)),
              ]),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Home_page()));
              },
              child: Container(
                  child: Stack(
                    children: [
                      Positioned(
                          top: 20,
                          left: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(50),
                              color: Colors.black,
                            ),
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  height: 360,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/main_image.png",
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
                                color: Colors.white),
                            child:
                                Image.asset("assets/images/avatar_image.png"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Samuel Newton",
                            style: TextStyle(
                                color: Colors.black,
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
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TECHNOLOGY",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "To build responsibly,tech",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "needs to do more than just",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "hire chief ethics officers",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    )),
                    Text(
                      "17 June,2023-4:49PM",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w300),
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
                color: const Color.fromARGB(255, 232, 231, 231),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "In the last couple of years,we've seen",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "new teams in tech companies emerge",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "that focus on responsible innovation,",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "digital well-being,AI ethics or humane",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "use.Whatever their titles,these individual",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "are given in the task of \"leading\" ethics at",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "their companies",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
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
}
