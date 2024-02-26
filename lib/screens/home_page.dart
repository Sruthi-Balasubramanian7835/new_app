import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/model/newschannel_headlinesmodel.dart';
import 'package:news_app/presentation/news_details.dart';

import 'package:news_app/presentation/widgets/card_items.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';
import 'package:news_app/view_model/news_view_model.dart';
import 'package:sticky_headers/sticky_headers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NewsViewModel newsViewModel = NewsViewModel();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
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
          child:Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
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
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  StickyHeader(
                    header: Container(
                        width: width,
                        height: height*0.05,
                        
                        color: ColorResources.white,
                        child: const Text(
                          "Latest News",
                          style: TextStyle(
                              color: ColorResources.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 18),
                        ),
                      ),
                      content: FutureBuilder<NewsChannelHeadLinesModel>(
                      future: newsViewModel.fetchNewsChannelHeadlinesApi(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
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
                                                    )));
                                      },
                                      child: SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Container(
                                                  height: 100,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadiusDirectional.circular(20),
                                                    image: DecorationImage(image: CachedNetworkImageProvider(snapshot
                                                      .data!
                                                      .articles![index]
                                                      .urlToImage
                                                      .toString(),
                                                      
                                                      ),
                                                      fit: BoxFit.cover,
                                                      ),
                                                  ),
                                                
                                                  
                                                 
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                height: height * 0.55,
                                                width: width * 0.45,
                                                child: Text(
                                                  snapshot.data!
                                                      .articles![index].title
                                                      .toString(),
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: GoogleFonts.poppins(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ]),
                                      ),
                                    ),
                                  );
                                })));
                      }) ,

                  ),
                   
                    
                ],
                  ),
            )
                  
                ],
              ),
      )
            );
          
        
      
    
  }
}
