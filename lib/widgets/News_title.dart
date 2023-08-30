import 'package:flutter/material.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network('https://picsum.photos/250?image=9',
           height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
          ),

        ),
       const  SizedBox(
          height:8
        ),
     const    Text('Large Title Should be in this place ejskgblenerlkanglkwehleajnlewrnljgnlktejfwelierjlejlgjfdslgfjlfwerl ',
      maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,),
     ),
      const SizedBox(
          height: 8,
        ),
      const    Text('and here is description  in the tittle ',
     maxLines: 2,
          style:  TextStyle(color: Colors.grey, fontSize: 14),
     )
      ],

    );
  }
}