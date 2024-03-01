import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/model/latestnews_model.dart';
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
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Container(
        height: height * 0.3,
        width: width,
        child: StickyHeader(
          header: Container(
              height: height * 0.03,
              width: width,
              color: ColorResources.white,
              child: Text(
                "Latest News",
                style: GoogleFonts.aBeeZee(
                    fontSize: 18, fontWeight: FontWeight.bold),
              )),
          content: FutureBuilder<LatestNewsModel>(
              future: latestnewsviewModel.fetchLatestNewsChannelApi(),
              builder: (BuildContext context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: SpinKitCircle(
                      size: 50,
                      color: ColorResources.blue,
                    ),
                  );
                } else {
                  return ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.articles!.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: height * 0.5,
                                width: width * 0.75,
                                padding: EdgeInsets.all(5),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(15),
                                  child: Opacity(
                                    opacity: 0.65,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    NewsDetails(
                                                      newsauthor: snapshot
                                                          .data!
                                                          .articles![index]
                                                          .author
                                                          .toString(),
                                                      newscontent: snapshot
                                                          .data!
                                                          .articles![index]
                                                          .content
                                                          .toString(),
                                                      newsdescription: snapshot
                                                          .data!
                                                          .articles![index]
                                                          .description
                                                          .toString(),
                                                      newsimage: snapshot
                                                          .data!
                                                          .articles![index]
                                                          .urlToImage
                                                          .toString(),
                                                      newstime: snapshot
                                                          .data!
                                                          .articles![index]
                                                          .publishedAt
                                                          .toString(),
                                                           newssource: snapshot.data!
                                                      .articles![index].source!.name
                                                      .toString(),
                                                    )));
                                      },
                                      child: CachedNetworkImage(
                                        imageUrl: snapshot
                                            .data!.articles![index].urlToImage
                                            .toString(),
                                        fit: BoxFit.cover,
                                        placeholder: (context, url) =>
                                            Container(
                                          child: SpinKitCircle(
                                            size: 50,
                                            color: ColorResources.amber,
                                          ),
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
                              Positioned(
                                  bottom: 10,
                                  top: 150,
                                  child: Container(
                                      height: height * 0.1,
                                      width: width * 0.6,
                                      child: Text(
                                        snapshot.data!.articles![index].title
                                            .toString(),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )))
                            ],
                          ),
                        );
                      });
                }
              }),
        ));
  }
}
