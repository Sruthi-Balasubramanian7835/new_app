import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';

class NewsDetails extends StatefulWidget {
  final String newsimage, newsauthor, newsdescription, newstime, newscontent;
  const NewsDetails(
      {super.key,
      required this.newsauthor,
      required this.newscontent,
      required this.newsdescription,
      required this.newsimage,
      required this.newstime});

  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  final format = DateFormat('MMMM dd,yyyy');
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    DateTime dateTime = DateTime.parse(widget.newstime);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
              child: Container(
                height: height * 0.5,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(image: CachedNetworkImageProvider(widget.newsimage),fit: BoxFit.cover)
                ),
                
                   
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Text(
                    "Author:",
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    widget.newsauthor,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: height * 0.25,
                width: width,
               
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.newsdescription,
                      style: GoogleFonts.aBeeZee(
                          fontSize: 15, fontWeight: FontWeight.w900),
                          maxLines: 5,
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Text(
                      format.format(dateTime),
                      style: GoogleFonts.aBeeZee(
                          fontSize: 15, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                width: width,
                child: Text(widget.newscontent),
              ),
            )
          ],
        ),
      ),
    );
  }
}
