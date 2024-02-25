// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:news_app/presentation/home_page.dart';
// import 'package:news_app/src/utils/resources/asset_resources.dart';
// import 'package:news_app/src/utils/resources/color_resources.dart';

// class NewsDetails extends StatefulWidget {
//   const NewsDetails({super.key});

//   @override
//   State<NewsDetails> createState() => _NewsDetailsState();
// }

// class _NewsDetailsState extends State<NewsDetails> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             height: height * 0.5,
//             width: width * 1,
//             child: ClipRRect(
//               borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(30)),
//               child: CachedNetworkImage(
//                 imageUrl: snapshot.data!.articles![index].urlToImage.toString(),
//                 fit: BoxFit.cover,
//                 placeholder: (context, url) => SpinKitCircle(
//                   size: 50,
//                   color: ColorResources.amber,
//                 ),
//                 errorWidget: (context, url, error) => Icon(
//                   Icons.error_outline,
//                   color: ColorResources.red,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: height * 0.02,
//           ),
//           SizedBox(
//             child: Column(
//               children: [
//                 Text(
//                   "Author:",
//                   style: GoogleFonts.poppins(
//                       color: ColorResources.black,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w900),
//                 ),
//                 Text(snapshot.data!.articles![index].author.toString(),
//                     maxLines: 2,
//                     style: GoogleFonts.poppins(
//                         color: ColorResources.black,
//                         fontSize: 12,
//                         fontWeight: FontWeight.w900)),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: height * 0.02,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 30, right: 30),
//             child: Container(
//               height: height * 0.25,
//               width: width * 1,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     snapshot.data!.articles![index].content.toString(),
//                     style: GoogleFonts.aBeeZee(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600,
//                         color: ColorResources.black),
//                   ),
//                   Text(format.format(dateTime))
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }
