import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const  Row(
         mainAxisSize: MainAxisSize.min,
          children: [
            Text('News ',style: TextStyle(
   color: Colors.black,
            ),),
            Text('Cloude ',style: TextStyle(
   color: Colors.yellow,
            ),),
          ],
        ),
      ),
    );
  }
}