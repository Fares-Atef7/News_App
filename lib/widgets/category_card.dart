import 'package:flutter/material.dart';
import 'package:news_app/Pages/CategoryView.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryModel,
  });

  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return Categoryview(
                category: categoryModel.imageName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(categoryModel.imageAssets),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: Text(
            categoryModel.imageName,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
