import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/News_title.dart';
import 'package:news_app_ui_setup/widgets/catgory_card.dart';
import 'package:news_app_ui_setup/widgets/news_list_title.dart';
import 'package:news_app_ui_setup/widgets/category_list_view_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
         SliverToBoxAdapter(child: CategoryListView()),
         SliverToBoxAdapter(child: SizedBox(
          height: 32,
         ),),
         SliverToBoxAdapter(
          child: NewsListTitle(),
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