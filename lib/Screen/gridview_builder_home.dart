import 'package:demo_create/widget/builder_widget/gridview_builder.dart';
import 'package:flutter/material.dart';

class GridviewHome extends StatefulWidget {
  const GridviewHome({super.key});

  @override
  State<GridviewHome> createState() => _GridviewHomeState();
}

class _GridviewHomeState extends State<GridviewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridviewBuilderDemo(
        image: Image.asset("assets/images/download.png"),
        name: 'Dhvani',
        subname: 'Dabhi',
      ),
    );
  }
}
