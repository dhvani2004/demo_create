import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatelessWidget {
  final Image image;
  final String name;
  final int no;
  final String email;


  const ListViewBuilderDemo({super.key, required this.image, required this.name, required this.no, required this.email, });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {

        return ListTile(
          leading: image,
          title: Text(name, style: AppTextTheme.bold.copyWith(fontSize: 20, color: Colors.black),),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(no.toString(), style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstant.greyColor),),
              Text(email, style: AppTextTheme.medium.copyWith(fontSize: 14, color: ColorConstant.greyColor),
              ),
            ],
          ),
        );
      },
    );
  }
}
