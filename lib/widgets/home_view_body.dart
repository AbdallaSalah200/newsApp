import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/catgory_card.dart';
import 'package:news_app_ui_setup/widgets/category_list_view_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CategoryListView();
  }
}