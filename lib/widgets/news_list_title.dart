import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/News_title.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';


class NewsListTitle extends StatelessWidget {
  List<ArticleModel> articles;

  NewsListTitle({
    Key? key,
    required this.articles,
  }) : super(key: key);

  @override
 

  
  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: 10,
    //   physics:const   NeverScrollableScrollPhysics(),
    //   itemBuilder: (context, index) {
    //     return const  Padding(
    //       padding:  EdgeInsets.only(bottom:8.0),
    //       child: NewsTitle(),
    //     );
    //   },
    // ); 
    return    SliverList(delegate: SliverChildBuilderDelegate(
      
      childCount:   articles.length,
      (context, index) {
          return  Padding(
            padding:  const  EdgeInsets.only(bottom:8.0),
            child:   NewsTitle(
              artical: articles[index],
            ),
          );
         },),);
  }
}
