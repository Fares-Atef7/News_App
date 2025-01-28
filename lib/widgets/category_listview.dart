import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

// ignore: camel_case_types
class categeries_listview extends StatelessWidget {
  const categeries_listview({
    super.key,
  });
  final List<CategoryModel> category = const [
    CategoryModel(
      imageAssets: 'assets/business.avif',
      imageName: 'business',
    ),
    CategoryModel(
      imageAssets: 'assets/general.avif',
      imageName: 'general',
    ),
    CategoryModel(
      imageAssets: 'assets/health.avif',
      imageName: 'health',
    ),
    CategoryModel(
      imageAssets: 'assets/science.avif',
      imageName: 'science',
    ),
    CategoryModel(
      imageAssets: 'assets/entertaiment.avif',
      imageName: 'entertainment',
    ),
    CategoryModel(
      imageAssets: 'assets/technology.jpeg',
      imageName: 'technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              categoryModel: category[index],
            );
          }),
    );
  }
}
