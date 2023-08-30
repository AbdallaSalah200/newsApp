import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/News_title.dart';

class NewsListTitle  extends StatelessWidget {
  const NewsListTitle ({super.key});

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
      
      childCount: 10,
      (context, index) {
          return const  Padding(
            padding:  EdgeInsets.only(bottom:8.0),
            child:   NewsTitle(),
          );
         },),);
  }
}