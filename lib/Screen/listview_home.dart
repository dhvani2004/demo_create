import 'package:demo_create/widget/builder_widget/listview_builder.dart';
import 'package:flutter/material.dart';

class Listview_home extends StatefulWidget {
  const Listview_home({super.key});

  @override
  State<Listview_home> createState() => _Listview_homeState();
}

class _Listview_homeState extends State<Listview_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListViewBuilderDemo(
        image: Image.asset("assets/images/download.png"),
        name: '',
        no: 1,
        email: '',)

    );
  }
}
