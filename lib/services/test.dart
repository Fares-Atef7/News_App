import 'package:dio/dio.dart';

class NewsService2 {
  final Dio dio;

  NewsService2(this.dio);

  Future<Map<String, dynamic>> getNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=45d4926b14f2440e83ab4e2e58c47757',
    );
    return response.data;
  }

  Future<Map<String, dynamic>> getNews2() async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=45d4926b14f2440e83ab4e2e58c47757',
      );
      return response.data;
    } catch (e) {
      print('Error: $e');
      return {};
    }
  }

  void fetchNews() async {
    var newsService = NewsService2(Dio());
    var data = await newsService.getNews();
    print(data);
  }

  // Map<String, dynamic> jsonData = response.data;
}
