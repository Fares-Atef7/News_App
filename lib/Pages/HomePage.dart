import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListViewsBuilder.dart';
import 'package:news_app/widgets/category_listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          // physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: categeries_listview()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 12,
              ),
            ),
            NewsListViewsBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}







// ListView(
      //   children: const [
      //     categeries_listview(),
      //     SizedBox(
      //       height: 32,
      //     ),
      //     news_listview()
      //   ],
      // ),