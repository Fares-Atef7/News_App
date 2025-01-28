import 'package:flutter/material.dart';
import 'package:news_app/Pages/HomePage.dart';
// import 'dart:ui';

void main() {
  runApp(const News_App());
}

// ignore: camel_case_types
class News_App extends StatelessWidget {
  const News_App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// final dio = Dio();

// void getHttp() async {
//   final response = await dio.get('https://dart.dev');
//   print(response);
// }
