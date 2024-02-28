import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
              return const SpinKitCircle(
                size: 50,
                color: ColorResources.blue,
              );
            }
            return SizedBox(
              height: height * 0.4,
              width: width,
             
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.articles!.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
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
                                        newsdescription: snapshot
                                            .data!.articles![index].description
                                            .toString(),
                                        newsimage: snapshot
                                            .data!.articles![index].urlToImage
                                            .toString(),
                                        newstime: snapshot
                                            .data!.articles![index].publishedAt
                                            .toString(),
                                      )));
                        },
                        child: Container(
                          height: height,
                          width: width * 0.75,
                          
                          decoration: BoxDecoration(
                            color: ColorResources.amber,
                              borderRadius: BorderRadiusDirectional.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CachedNetworkImage(
                              imageUrl: snapshot.data!.articles![index].urlToImage
                                  .toString(),
                              imageBuilder: (context, imageProvider) {
                                return Container(
                                  height: height * 0.1,
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(15),
                                      image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover)),
                                );
                              },
                              placeholder: (context, url) => const SpinKitCircle(
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
                                    AssetResources.noimage,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    })),
              
            );
          }),
    );
  }
}
