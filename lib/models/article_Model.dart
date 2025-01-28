class ArticleModel {
  // any map must be represent in objects
  final String? image;
  final String title;
  final String? subtitle;
  // final Source source;
  ArticleModel(
      {required this.image, required this.title, required this.subtitle});
// any model for get data from api , factory is nesscary
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subtitle: json['description'],
    );
  }
}

// class Source {
//   final String? id;
//   final String? name;

//   Source({required this.id, required this.name});
// }
