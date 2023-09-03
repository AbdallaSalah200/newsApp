import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/news_list_title.dart';



class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category ;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future =NewsServices(Dio()).getTopHeadLines(
      category: widget.category
    );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(future: future, builder: (context,snapShot){
      if (snapShot.hasData) {
  return   NewsListTitle(
  articles: snapShot.data??[],
      );
}else if(snapShot.hasError) {
return const   SliverFillRemaining(child: Text('oops the application is not work now')) ;
}else{
  return const   SliverFillRemaining(child: Center(child: CircularProgressIndicator()));
}
});
    // return isLoading ? const   SliverFillRemaining(child: Center(child: CircularProgressIndicator())): articles.isNotEmpty ?   NewsListTitle(
    //   articles: articles,
    // ):const   SliverFillRemaining(child: Text('oops the application is not work now')) ;
  }
}