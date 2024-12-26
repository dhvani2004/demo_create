import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:flutter/material.dart';

class GridviewBuilderDemo extends StatelessWidget {
  final String name;
  final Image image;
  final String subname;

  const GridviewBuilderDemo({super.key, required this.name, required this.image, required this.subname});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 4),
      itemBuilder: (BuildContext context, int index) {
        return GridTile(
            child: Container(
          color: ColorConstant.primary,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                image,
                Text(name, style: AppTextTheme.bold.copyWith(fontSize: 20, color: ColorConstant.blackColor),),
                Text(subname, style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstant.blackColor),),
              ],
            ),
          ),
        ));
      },
    );
  }
}
