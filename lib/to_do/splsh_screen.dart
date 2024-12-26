import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:demo_create/to_do/assestconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({super.key});

  @override
  State<SplshScreen> createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
               height: Get.height/2,
                width: Get.width,
                child: Image.asset(Assestconstant.splash,fit: BoxFit.cover)),
            SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstant.bgColor,
                    foregroundColor: ColorConstant.whiteColor,
                    side: BorderSide(width: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),padding: EdgeInsets.symmetric(vertical: 20,horizontal: 150)
                ),
                onPressed: ()
                {
                  Get.to(()=>HomeScreen());
                },
                child: Text("Let's Start",style: AppTextTheme.bold.copyWith(color: ColorConstant.blackColor),))
          ],
        ),
      ),
    );
  }
}
