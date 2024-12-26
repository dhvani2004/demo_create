import 'dart:io';

import 'package:flutter/material.dart';

import '../../custom/file_image.dart';

class PageviewBuilderDemo extends StatelessWidget {

  final List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.orange, Colors.purple];

   PageviewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Home Page"),backgroundColor: Colors.black,),
      body:PageView.builder(
          itemBuilder: (context,index)
          {
            return Container(
              color: colors[index],
              child: Center(
                child: Text(
                  "Pages ${index +1 }",style: TextStyle(color: Colors.black),),
              ),
            );
          })
    );

  }
}
