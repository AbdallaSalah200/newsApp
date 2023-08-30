import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/News_title.dart';

class NewsListTitle  extends StatelessWidget {
  const NewsListTitle ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics:const   BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const  Padding(
          padding:  EdgeInsets.only(bottom:8.0),
          child: NewsTitle(),
        );
      },
    );
  }
}