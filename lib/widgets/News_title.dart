import '../models/artical_model.dart';
import 'package:flutter/material.dart';
//import 'package:news_app_ui_setup/models/artical_model.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key, required this.artical});
  final ArticleModel artical ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(artical.image??'https://picsum.photos/250?image=9',
           height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
          ),

        ),
       const  SizedBox(
          height:8
        ),
         Text(artical.title ??" ",
      maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const  TextStyle(color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,),
     ),
      const SizedBox(
          height: 8,
        ),
          Text(artical.subTitle??'  ',
     maxLines: 2,
          style:  const  TextStyle(color: Colors.grey, fontSize: 14),
     )
      ],

    );
  }
}