import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/catgory_card.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

   

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
   final List <CategoryModel> categoties=const  [
    CategoryModel(image:'assets/carlos-muza-hpjSkU2UYSU-unsplash.jpg' , categryname: 'Business'),
     CategoryModel(image:'assets/entertaiment.avif' , categryname: 'Entertaiment'),
      CategoryModel(image:'assets/general.avif' , categryname: 'Genral'),
       CategoryModel(image:'assets/health.avif' , categryname: 'Health'),
        CategoryModel(image:'assets/premium_photo-1661963212517-830bbb7d76fc.jpeg' , categryname: 'Technolgy'),
         CategoryModel(image:'assets/science.avif' , categryname: 'Sencie'),
          CategoryModel(image:'assets/sports.avif' , categryname: 'Sports'),
   ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110 ,
      child: ListView.builder(
        itemCount: categoties.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return   CategoryCard(
            categories: categoties[index],
          );
        },
      ),
    );
  }
}