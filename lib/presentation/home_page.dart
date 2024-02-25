import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:news_app/model/newschannel_headlinesmodel.dart';

import 'package:news_app/presentation/news_details.dart';
import 'package:news_app/presentation/widgets/card_items.dart';
import 'package:news_app/presentation/widgets/subcard_items.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';
import 'package:news_app/view_model/news_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NewsViewModel newsViewModel = NewsViewModel();
  final format=DateFormat('MMMM dd,yyyy');
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "NewsApp",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        leading: Image.asset(AssetResources.menuicon),
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset(AssetResources.podcasticon))
        ],
      ),
      backgroundColor: ColorResources.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardItems(img: AssetResources.robotimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.microsoftimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.robotimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.microsoftimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.robotimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.microsoftimage),
                    SizedBox(
                      width: 5,
                    ),
                    CardItems(img: AssetResources.robotimage),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Latest News",
                        style: TextStyle(
                            color: ColorResources.black,
                            fontWeight: FontWeight.w200,
                            fontSize: 12),
                      ),
                      Image.asset(AssetResources.navigateicon)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FutureBuilder<NewsChannelHeadLinesModel>(
                      future: newsViewModel.fetchNewsChannelHeadlinesApi(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
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
                                itemBuilder: ((context, index)
                                 {
                                  DateTime dateTime=DateTime.parse(snapshot.data!.articles![index].publishedAt.toString());
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Scaffold(
                                                    body: SingleChildScrollView(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: height * 0.5,
                                                        width: width * 1,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          30),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          30)),
                                                          child:
                                                              CachedNetworkImage(
                                                            imageUrl: snapshot
                                                                .data!
                                                                .articles![
                                                                    index]
                                                                .urlToImage
                                                                .toString(),
                                                            fit: BoxFit.cover,
                                                            placeholder: (context,
                                                                    url) =>
                                                                SpinKitCircle(
                                                              size: 50,
                                                              color:
                                                                  ColorResources
                                                                      .amber,
                                                            ),
                                                            errorWidget:
                                                                (context, url,
                                                                        error) =>
                                                                    Icon(
                                                              Icons
                                                                  .error_outline,
                                                              color:
                                                                  ColorResources
                                                                      .red,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: height * 0.02,
                                                      ),
                                                      SizedBox(
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              "Author:",
                                                              style: GoogleFonts.poppins(
                                                                  color:
                                                                      ColorResources
                                                                          .black,
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900),
                                                            ),
                                                            Text(
                                                                snapshot
                                                                    .data!
                                                                    .articles![
                                                                        index]
                                                                    .author
                                                                    .toString(),
                                                                maxLines: 2,
                                                                style: GoogleFonts.poppins(
                                                                    color: ColorResources
                                                                        .black,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900)),
                                                          ],
                                                        ),
                                                      ),
                                                       SizedBox(
                                                        height: height * 0.02,
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 30,right: 30),
                                                        child: Container(
                                                          height: height * 0.25,
                                                          width: width * 1,
                                                          
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text(snapshot.data!.articles![index].content.toString(),style: GoogleFonts.aBeeZee(
                                                                fontSize: 15,fontWeight: FontWeight.w600,color:ColorResources.black
                                                              ),),
                                                              Text(format.format(dateTime))
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ))));
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: CachedNetworkImage(
                                              height: 100,
                                              width: 100,
                                              imageUrl: snapshot.data!
                                                  .articles![index].urlToImage
                                                  .toString(),
                                              fit: BoxFit.cover,
                                              placeholder: (context, url) =>
                                                  SpinKitCircle(
                                                size: 50,
                                                color: ColorResources.amber,
                                              ),
                                              errorWidget:
                                                  (context, url, error) => Icon(
                                                Icons.error_outline,
                                                color: ColorResources.red,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: height * 0.55,
                                            width: width * 0.45,
                                            child: Text(
                                              snapshot
                                                  .data!.articles![index].title
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
                            })));
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
