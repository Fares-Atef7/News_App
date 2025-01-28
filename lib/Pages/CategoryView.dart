import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListViewsBuilder.dart';

class Categoryview extends StatelessWidget {
  const Categoryview({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListViewsBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
