import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              title: Text("Category 1",style: GoogleFonts.poppins(
                fontSize: 15,fontWeight: FontWeight.bold
              ),),
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text("Category 2",style: GoogleFonts.poppins(
                fontSize: 15,fontWeight: FontWeight.bold
              ),),
              onTap: () {
                
              },
            ),
            ListTile(
              title: Text("Category 3",style: GoogleFonts.poppins(
                fontSize: 15,fontWeight: FontWeight.bold
              ),),
              onTap: () {
                
              },
            ),
          ],
          
        
    );
  }
}