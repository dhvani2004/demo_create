import 'package:demo_create/bottom_nvigation/style_1/buttom_navigation.dart';
import 'package:demo_create/custom_widgets/button/elevatedbutton.dart';
import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenDemo1 extends StatefulWidget {
  const ScreenDemo1({super.key});

  @override
  State<ScreenDemo1> createState() => _ScreenDemo1State();
}

class _ScreenDemo1State extends State<ScreenDemo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            CustomElevatedButton(
              text: "Login",
              backgroundColor: Colors.red,
              textColor: ColorConstant.whiteColor,
              onPressed: () {
                Get.offAll(() => const BottomNavigationBarExample());
              },
            ),
          ],
        ),
      ),
    );
  }
}
