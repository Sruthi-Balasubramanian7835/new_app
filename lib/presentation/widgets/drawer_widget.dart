import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:news_app/screens/category_news.dart';

class Categories extends StatefulWidget {
  const Categories({super.key, required ListView child});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text(
            "Categories",
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w900),
          ),
        ),
        ListTile(
          title: Text(
            "General",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoryNews(
                          txt: 'General News',
                          categoryname: 'general',
                        )));
          },
        ),
        ListTile(
          title: Text(
            "Health",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoryNews(
                          txt: 'Health News',
                          categoryname: 'health',
                        )));
          },
        ),
        ListTile(
          title: Text(
            "Entertainment",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoryNews(
                          txt: 'Entertainment News',
                          categoryname: 'entertainment',
                        )));
          },
        ),
        ListTile(
          title: Text(
            "Sports",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoryNews(
                          txt: 'Sports News',
                          categoryname: 'sports',
                        )));
          },
        ),
        ListTile(
          title: Text(
            "Business",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoryNews(
                          txt: 'Business News',
                          categoryname: 'business',
                        )));
          },
        ),
        ListTile(
          title: Text(
            "Technology",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoryNews(
                          txt: 'Technology News',
                          categoryname: 'technology',
                        )));
          },
        ),
        ListTile(
          title: Text(
            "Education",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoryNews(
                          txt: 'Education News',
                          categoryname: 'education',
                        )));
          },
        ),
        ListTile(
          title: Text(
            "Politics",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CategoryNews(
                          txt: 'Political News',
                          categoryname: 'politics',
                        )));
          },
        ),
      ],
    );
  }
}
