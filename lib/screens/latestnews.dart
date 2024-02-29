import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/news_details.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';
import 'package:news_app/view_model/latestnews_viewmodel.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({super.key});

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  LatestNewsViewModel latestnewsviewModel = LatestNewsViewModel();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return StickyHeader(
      header: Container(
        color: ColorResources.white,
        width: width,
        child: const Text(
          "Latest News",
          style: TextStyle(
              color: ColorResources.black,
              fontSize: 18,
              fontWeight: FontWeight.w800),
        ),
      ),
      content: FutureBuilder(
          future: latestnewsviewModel.fetchLatestNewsChannelApi(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: const SpinKitCircle(
                  size: 50,
                  color: ColorResources.blue,
                ),
              );
            } else {
              return SizedBox(
                height: height * 0.4,
                width: width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.articles!.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                height: height * 0.4,
                                width: width * 0.75,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(15),
                                  child: Opacity(
                                    opacity: 0.5,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => NewsDetails(
                                                newsauthor: snapshot.data!
                                                    .articles![index].author
                                                    .toString(),
                                                newscontent: snapshot.data!
                                                    .articles![index].content
                                                    .toString(),
                                                newsdescription: snapshot
                                                    .data!
                                                    .articles![index]
                                                    .description
                                                    .toString(),
                                                newsimage: snapshot.data!
                                                    .articles![index].urlToImage
                                                    .toString(),
                                                newstime: snapshot
                                                    .data!
                                                    .articles![index]
                                                    .publishedAt
                                                    .toString(),
                                              ),
                                            ));
                                      },
                                      child: CachedNetworkImage(
                                        imageUrl: snapshot
                                            .data!.articles![index].urlToImage
                                            .toString(),
                                        fit: BoxFit.cover,
                                        
                                        placeholder: (context, url) =>
                                            SpinKitCircle(
                                          size: 50,
                                          color: ColorResources.amber,
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(
                                          AssetResources.noimage,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 210,
                              child: Container(
                                  height: height * 0.1,
                                  width: width * 0.55,
                                  child: Text(
                                    snapshot.data!.articles![index].title
                                        .toString(),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      );
                    }),
              );
            }
          }),
    );
  }
}
