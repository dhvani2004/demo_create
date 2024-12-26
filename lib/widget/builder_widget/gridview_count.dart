import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:flutter/material.dart';

class GridviewCountDemo1 extends StatelessWidget {
  final String name;
  final int no;
  final String email;
  const GridviewCountDemo1({super.key, required this.name, required this.no, required this.email});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        children: List.generate(100, (index) {
          return Column(
            children: [
              Text(name,style: AppTextTheme.bold.copyWith(fontSize: 20,color: ColorConstant.blackColor),),
              Text(no.toString(),style: AppTextTheme.bold.copyWith(fontSize: 20,color: ColorConstant.blackColor),),
              Text(email,style: AppTextTheme.bold.copyWith(fontSize: 20,color: ColorConstant.blackColor),),
            ],
          );
        }));
  }
}
