import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/screens/news_details.dart';
import 'package:news_app/src/utils/resources/asset_resources.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';
import 'package:news_app/view_model/businesscategory_view_model.dart';

class BusinessCategoryNews extends StatefulWidget {
  const BusinessCategoryNews({super.key});

  @override
  State<BusinessCategoryNews> createState() => _BusinessCategoryNewsState();
}

class _BusinessCategoryNewsState extends State<BusinessCategoryNews> {
  BusinessCategoryViewModel businessCategoryViewModel=BusinessCategoryViewModel();
  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Business News",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(future:businessCategoryViewModel.fetchBusinessCategoryapi(), builder: (BuildContext context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return SpinKitCircle(
             size: 50,
             color: ColorResources.blue,
            );
          }
          return  Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: height,
                width: width,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.articles!.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
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
                                          newsimage: snapshot
                                              .data!.articles![index].urlToImage
                                              .toString(),
                                          newstime: snapshot.data!
                                              .articles![index].publishedAt
                                              .toString(),
                                          newssource: snapshot.data!
                                              .articles![index].source!.name
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
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(15),
                                    child: CachedNetworkImage(
                                      height: height * 0.3,
                                      width: width * 0.3,
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
              ),
            );
        }),
      ),
    );
  }
}