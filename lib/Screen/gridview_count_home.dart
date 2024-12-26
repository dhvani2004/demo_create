import 'package:flutter/material.dart';

import '../widget/builder_widget/gridview_count.dart';

class GridviewCountDemo extends StatefulWidget {
  const GridviewCountDemo({super.key});

  @override
  State<GridviewCountDemo> createState() => _GridviewCountDemoState();
}

class _GridviewCountDemoState extends State<GridviewCountDemo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridviewCountDemo1(
              name:"dhvani" ,
        email: "d@gmail.com",
        no: 1,
      ),
    );
  }
}
