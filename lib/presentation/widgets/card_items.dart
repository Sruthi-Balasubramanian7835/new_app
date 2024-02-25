import 'package:flutter/material.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';

class CardItems extends StatelessWidget {
  final String img;
  const CardItems({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      height: 300,
      width: 300,
      child: Stack(
        children: [
          Image.asset(img),
          const Positioned(
              child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
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
          const Positioned(
              top: 140,
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Text(
                  "Microsoft launches a\ndeepfake detector tool\nahead of US election",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorResources.white),
                ),
              )),
          Positioned(
            top: 270,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 170),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AssetResources.chaticon),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(AssetResources.bookmarkicon),
                    ],
                  ),
                ),
                Image.asset(AssetResources.arrowicon),
              ],
            ),
          )
        ],
      ),
    );
  }
}
