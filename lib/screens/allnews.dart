import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/model/newschannel_headlinesmodel.dart';
import 'package:news_app/screens/news_details.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';
import 'package:news_app/view_model/news_view_model.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class AllNews extends StatefulWidget {
  const AllNews({super.key});

  @override
  State<AllNews> createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  NewsViewModel newsViewModel = NewsViewModel();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return StickyHeader(
      header: Container(
        width: width,
        color: ColorResources.white,
        child: const Text(
          "All News",
          style: TextStyle(
              color: ColorResources.black,
              fontWeight: FontWeight.w800,
              fontSize: 18),
        ),
      ),
      content: FutureBuilder<NewsChannelHeadLinesModel>(
          future: newsViewModel.fetchNewsChannelHeadlinesApi(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: SpinKitCircle(
                  color: ColorResources.blue,
                  size: 50,
                ),
              );
            }
            return Container(
                height: height,
                width: width,
               
                  child: ListView.builder(
                      itemCount: snapshot.data!.articles!.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewsDetails(
                                            newsauthor: snapshot
                                                .data!.articles![index].author
                                                .toString(),
                                            newscontent: snapshot
                                                .data!.articles![index].content
                                                .toString(),
                                            newsdescription: snapshot.data!
                                                .articles![index].description
                                                .toString(),
                                            newsimage: snapshot.data!
                                                .articles![index].urlToImage
                                                .toString(),
                                            newstime: snapshot.data!
                                                .articles![index].publishedAt
                                                .toString(),
                                          )));
                            },
                            child: SizedBox(
                              height: height * 0.1,
                              width: width,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl: snapshot
                                          .data!.articles![index].urlToImage
                                          .toString(),
                                      imageBuilder: (context, imageProvider) {
                                        return Container(
                                          height: height * 0.1,
                                          width: width * 0.3,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadiusDirectional
                                                      .circular(15),
                                              image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover)),
                                        );
                                      },
                                      placeholder: (context, url) =>
                                          const SpinKitCircle(
                                        size: 50,
                                        color: ColorResources.amber,
                                      ),
                                      errorWidget: (context, url, error) {
                                        if (kDebugMode) {
                                          print("Error loading image:$error");
                                        }
                                        return SizedBox(
                                          height: height * 0.1,
                                          width: width * 0.3,
                                          child: Image.asset(
                                              AssetResources.noimage),
                                        );
                                      },
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: height * 0.55,
                                      width: width * 0.45,
                                      child: Text(
                                        snapshot.data!.articles![index].title
                                            .toString(),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        );
                      })),
                );
          }),
    );
  }
}
