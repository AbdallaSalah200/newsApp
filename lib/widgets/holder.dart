// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/widgets/News_title.dart';
// import 'package:news_app_ui_setup/models/artical_model.dart';
// import 'package:news_app_ui_setup/services/news_services.dart';

// class NewsListTitle  extends StatefulWidget {
//   const NewsListTitle ({super.key});

//   @override
//   State<NewsListTitle> createState() => _NewsListTitleState();
// }

// class _NewsListTitleState extends State<NewsListTitle> {
//   List<ArticleModel> articles =[];
//   bool isLoading =true ;
//   @override
//   void initState()  {
//     super.initState();
//     // TODO: implement initState
//    isLoading =false ; 
//  getgenralnews();
//  setState(() {
   
//  });
//   }

//   Future<void> getgenralnews() async {
//     articles = await NewsServices(Dio()).getnews();
//   }
//   @override
//   Widget build(BuildContext context) {
//     // return ListView.builder(
//     //   shrinkWrap: true,
//     //   itemCount: 10,
//     //   physics:const   NeverScrollableScrollPhysics(),
//     //   itemBuilder: (context, index) {
//     //     return const  Padding(
//     //       padding:  EdgeInsets.only(bottom:8.0),
//     //       child: NewsTitle(),
//     //     );
//     //   },
//     // ); 
//     return  isLoading ? const  SliverFillRemaining(child: Center(child: CircularProgressIndicator())):  SliverList(delegate: SliverChildBuilderDelegate(
      
//       childCount:   articles.length,
//       (context, index) {
//           return  Padding(
//             padding:  const  EdgeInsets.only(bottom:8.0),
//             child:   NewsTitle(
//               artical: articles[index],
//             ),
//           );
//          },),);
//   }
// }