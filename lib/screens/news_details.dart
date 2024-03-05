import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';
import 'package:sticky_headers/sticky_headers.dart';

class NewsDetails extends StatefulWidget {
  final String newsimage,
      newsauthor,
      newsdescription,
      newstime,
      newscontent,
      newssource;
  const NewsDetails({
    super.key,
    required this.newsauthor,
    required this.newscontent,
    required this.newsdescription,
    required this.newsimage,
    required this.newstime,
    required this.newssource,
  });

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
        child: StickyHeader(
          header: Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: SizedBox(
                  height: height * 0.5,
                  width: width,
                  child: CachedNetworkImage(
                    imageUrl: widget.newsimage,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const SpinKitCircle(
                      color: ColorResources.amber,
                      size: 50,
                    ),
                    errorWidget: (context, url, error) => Image.asset(
                      AssetResources.noimage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:12,top: 45),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadiusDirectional.circular(10),
                            color: ColorResources.white,
                           ),
                        height: 35,
                        width: 35,
                        child: const Icon(Icons.arrow_back))),
              )
            ],
          ),
          content: Column(
            children: [
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
                child: SizedBox(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            format.format(dateTime),
                            style: GoogleFonts.aBeeZee(
                                fontSize: 15, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            widget.newssource,
                            style: GoogleFonts.aBeeZee(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: ColorResources.blue),
                          ),
                        ],
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
      ),
    );
  }
}
