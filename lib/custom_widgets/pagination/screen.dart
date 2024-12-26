import 'package:demo_create/custom_widgets/pagination/api_custom.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data"),),
      body: ApiPaginationExample(
        // Convert the string URL to Uri using Uri.parse()
        ApiUri: Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      ),
    );
  }
}
