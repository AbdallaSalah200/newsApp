import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/catgory_card.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

   

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
   final List <CategoryModel> categoties=const  [
    CategoryModel(image:'assets/carlos-muza-hpjSkU2UYSU-unsplash.jpg' , title: 'Business'),
     CategoryModel(image:'assets/entertaiment.avif' , title: 'Ethertainment'),
      CategoryModel(image:'assets/general.avif' , title: 'Genral'),
       CategoryModel(image:'assets/health.avif' , title: 'Health'),
        CategoryModel(image:'assets/premium_photo-1661963212517-830bbb7d76fc.jpeg' , title: 'Technolgy'),
         CategoryModel(image:'assets/science.avif' , title: 'Sencie'),
          CategoryModel(image:'assets/sports.avif' , title: 'Sports'),
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