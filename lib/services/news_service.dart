import 'package:dio/dio.dart';
import 'package:news_app/models/article_Model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    //respone object as a string ,
    // dio return the data as a json format but http package not

    try {
      Response response = await dio.get(
        //if the endpoints "headlines" , must be create a new methode
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=45d4926b14f2440e83ab4e2e58c47757&category=$category',
      );

      //the data which it retrun is a map
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesModelList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesModelList.add(articleModel);
      }
      return articlesModelList;
    } catch (e) {
      return [];
    }
  }
}



















// List<ArticleModel> articlesModelList = articles  as List<ArticleModel>;
    //OR
    // List<Map<String, dynamic>> articles2 =
    //     jsonData['articles'] as List<Map<String, dynamic>>;
    //this not correct
    // List<Map<String, dynamic>> articles2 =
    //     jsonData['articles']