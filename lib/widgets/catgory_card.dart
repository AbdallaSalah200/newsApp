import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 220,
      
      decoration: BoxDecoration(
        image: const  DecorationImage(image: AssetImage('assets/premium_photo-1661963212517-830bbb7d76fc.jpeg')),
        borderRadius: BorderRadius.circular(12)
      ),
      child:  const Center(
        child:   Text('Technolgy',style: TextStyle(
          color: Colors.white,
        ),),
      ),
    );
  }
}