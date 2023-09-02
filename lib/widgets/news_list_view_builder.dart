import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/news_list_title.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
   bool isLoading =true ;
  @override
  void initState()  {
    super.initState();
    // TODO: implement initState
   isLoading =false ; 
 getgenralnews();
 setState(() {
   
 });
  }

  Future<void> getgenralnews() async {
    articles = await NewsServices(Dio()).getnews();
  }
  @override
  Widget build(BuildContext context) {
    return isLoading ? const   SliverFillRemaining(child: Center(child: CircularProgressIndicator())): NewsListTitle(
      articles: articles,
    );
  }
}