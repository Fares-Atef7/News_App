// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_Model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/widgets/newstyle.dart';

// // ignore: camel_case_types
// class news_listview extends StatefulWidget {
//   const news_listview({
//     super.key,
//   });

//   @override
//   State<news_listview> createState() => _news_listviewState();
// }

// class _news_listviewState extends State<news_listview> {
//   //First Level in statefull
//   //this level is before building level

// //if data still loading =true , false when the data is got
//   bool isDataLoading = true;

//   List<ArticleModel> articles = [];
// //any iniliatize once will put in initstate
// //initestate called only once
// //so this request will run once
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

// //ctrl+shift+R
//   Future<void> getGeneralNews() async {
//     articles = await NewsService(Dio()).getNews();
//     isDataLoading = false;
//     //setstate make the application reBuild, after the previous line excueed
//     setState(() {});
//   }

// // // Last Level
// //   @override
// //   void dispose() {
// //     // TODO: implement dispose
// //     super.dispose();
// //   }
// // Second Level

//   @override
//   Widget build(BuildContext context) {
//     //in statelesswidget case
//     //the method in build method is a problem as each time we rebuild theses methods will recall
//     // in this case the request method getnews will make request every time
//     //this will lost with the api subscription
//     // NewsService(Dio()).getNews();

//     return isDataLoading
//         ? const SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articles.length, (
//               context,
//               index,
//             ) {
//               return Padding(
//                 padding: const EdgeInsets.only(bottom: 12),
//                 child: Newstyle(
//                   articleModel: articles[index],
//                 ),
//               );
//             }),
//           );
//   }
// }
