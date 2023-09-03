import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/Views/Category_view.dart';
import 'package:news_app_ui_setup/models/category_model.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.categories,
  }) : super(key: key);
 final CategoryModel categories ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push( MaterialPageRoute(
            builder: (context) {
              return CategoryView();           
            },
          ),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 110,
          width: 200,
          
          decoration: BoxDecoration(
            image:   DecorationImage(image: AssetImage(categories.image)),
            borderRadius: BorderRadius.circular(32)
          ),
          child:   Center(
            child:   Text(categories.title,style: const  TextStyle(
              color: Colors.white,
            ),),
          ),
        ),
      ),
    );
  }
}
