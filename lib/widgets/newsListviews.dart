import 'package:flutter/material.dart';
import 'package:news_app/models/article_Model.dart';
import 'package:news_app/widgets/newstyle.dart';

// ignore: camel_case_types
class news_listview extends StatelessWidget {
  final List<ArticleModel> articles;
  const news_listview({required this.articles, super.key});

  //First Level in statefull

// // Last Level
  @override
  Widget build(BuildContext context) {
    //in statelesswidget case
    //the method in build method is a problem as each time we rebuild theses methods will recall
    // in this case the request method getnews will make request every time
    //this will lost with the api subscription
    // NewsService(Dio()).getNews();

    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Newstyle(
            articleModel: articles[index],
          ),
        );
      }),
    );
  }
}
