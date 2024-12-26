import 'package:demo_create/bottom_nvigation/style_2/buttom_navigation.dart';
import 'package:demo_create/custom_widgets/button/elevatedbutton.dart';
import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenDemo2 extends StatefulWidget {
  const ScreenDemo2({super.key});

  @override
  State<ScreenDemo2> createState() => _ScreenDemo2State();
}

class _ScreenDemo2State extends State<ScreenDemo2> {
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
                Get.offAll(() => const ButtomNavigation2());
              },
            ),
          ],
        ),
      ),
    );
  }
}
