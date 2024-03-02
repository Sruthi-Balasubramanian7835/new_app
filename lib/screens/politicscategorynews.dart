import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app/src/utils/resources/color_resources.dart';
import 'package:news_app/view_model/politicscategory_view_model.dart';

class PoliticsCategoryNews extends StatefulWidget {
  const PoliticsCategoryNews({super.key});

  @override
  State<PoliticsCategoryNews> createState() => _PoliticsCategoryNewsState();
}

class _PoliticsCategoryNewsState extends State<PoliticsCategoryNews> {
  PoliticsCategoryViewModel politicsCategoryViewModel=PoliticsCategoryViewModel();
  @override
  Widget build(BuildContext context) {
      final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
       appBar: AppBar(
      
        centerTitle: true,
        title: Text("Politic News",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900)
        ),),
      body: SingleChildScrollView(
        child: FutureBuilder(future: politicsCategoryViewModel.fetchPoliticsCategoryapi(), builder: (BuildContext context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return SpinKitCircle(
              size: 50,
              color: ColorResources.blue,
            );
          }
          return Center(
            child: Text("data"),
          );
        })
      ),
    );
  }
}