import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/businesscategorynews.dart';
import 'package:news_app/screens/educationcategorynews.dart';
import 'package:news_app/screens/entertainmentcategory.dart';
import 'package:news_app/screens/generalcategorynews.dart';
import 'package:news_app/screens/healthcategory.dart';
import 'package:news_app/screens/politicscategorynews.dart';
import 'package:news_app/screens/sportscategorynews.dart';
import 'package:news_app/screens/technologycategorynews.dart';

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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GeneralCategoryNews()));
          },
        ),
        ListTile(
          title: Text(
            "Health",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HealthCategoryNews()));
          },
        ),
        ListTile(
          title: Text(
            "Entertainment",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>EntertainmentCategoryNews()));
          },
        ),
        ListTile(
          title: Text(
            "Sports",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SportsCategoryNews()));
          },
        ),
        ListTile(
          title: Text(
            "Business",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessCategoryNews()));
          },
        ),
        ListTile(
          title: Text(
            "Technology",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>TechnologyCategoryNews()));
          },
        ),
        ListTile(
          title: Text(
            "Education",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>EducationCategoryNews()));
          },
        ),
        ListTile(
          title: Text(
            "Politics",
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>PoliticsCategoryNews()));
          },
        ),
      ],
    );
  }
}
