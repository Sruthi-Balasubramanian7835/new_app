import 'package:flutter/material.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';

class SubcardItems extends StatelessWidget {
  final String img;
  final String text1;
  const SubcardItems({super.key, required this.img, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20),
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            Image.asset(img),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "TECHNOLOGY",
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorResources.grey,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    text1,
                    style: const TextStyle(
                        fontSize: 16,
                        color: ColorResources.black,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  }
