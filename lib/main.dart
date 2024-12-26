import 'package:demo_create/theme_using_getx/theme/screen/home_page.dart';
import 'package:demo_create/theme_using_getx/theme/theme/new_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Theme Toggle',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system, // Default system mode
      home: HomePage(),
    );
  }
}
