import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/News_title.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';
import 'package:news_app_ui_setup/widgets/catgory_card.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/news_list_title.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';
import 'package:news_app_ui_setup/widgets/category_list_view_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
 
  @override
  Widget build(BuildContext context) {
    return  const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics:   BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoryListView()),
          SliverToBoxAdapter(child: SizedBox(
          height: 32,
         ),),
        
       NewsListViewBuilder(
        category: 'genral',
       )
        ],
      ),
      // child:   Column(
      //   children:  [
      //     CategoryListView(
            
      //     ),
      //        SizedBox(
      //                height: 32,
      //     ),
      //     Expanded(child: NewsListTitle())
      //   ],
      // ),
    );
  }
}

