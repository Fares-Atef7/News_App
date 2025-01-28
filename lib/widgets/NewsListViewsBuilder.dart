import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_Model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/ErrorMessage.dart';
import 'package:news_app/widgets/newsListviews.dart';

// ignore: must_be_immutable
class NewsListViewsBuilder extends StatefulWidget {
  const NewsListViewsBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListViewsBuilder> createState() => _NewsListViewsBuilderState();
}

class _NewsListViewsBuilderState extends State<NewsListViewsBuilder> {
  bool isDataLoading = true;
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getTopHeadLines(category: widget.category);
  }

  // List<ArticleModel> articles = [];
  @override
  Widget build(BuildContext context) {
    //to rebuild the return widget according the request in the future paramter
    return FutureBuilder<List<ArticleModel>>(
        //future take the returnType of the right hand side
        //future line will trigger each rebuild , this not good
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return news_listview(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: ErrorMessage(
                  message: "There was an Error , Try Again Later! "),
            );
          } else {
            //Circular progress indicator
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
