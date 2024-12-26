import 'package:demo_create/bottom_nvigation/style_1/all_screens.dart';
import 'package:demo_create/bottom_nvigation/style_3/all_screens.dart';
import 'package:demo_create/bottom_nvigation/style_3/buttom_navigation.dart';
import 'package:demo_create/bottom_nvigation/style_3/custom_text.dart';
import 'package:demo_create/bottom_nvigation/style_3/header.dart';
import 'package:demo_create/bottom_nvigation/style_3/icon.dart';
import 'package:demo_create/bottom_nvigation/style_3/screen.dart';
import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home3 extends StatefulWidget {
  const home3({super.key});

  @override
  State<home3> createState() => _home3State();
}

class _home3State extends State<home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(
            title: "Create",
            onNotificationTap: () {
              print("Notification icon tapped");
            }, image: Image.asset("assets/images/notification.png",),
          ),
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/background_image.png",
                  fit: BoxFit.cover,
                  width: Get.width,
                  height: Get.height,
                ),
                Positioned(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50,left: 40,right: 50),
                          child: CustomText(
                            padding: EdgeInsets.only(top: 40,left: 50,right: 50),
                            title: 'CREATE TEAM',
                            onNotificationTap: ()
                            {

                            },
                            icon: Image.asset(Iconconstant.back_icon,fit: BoxFit.cover,), size: 25,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40,right: 50),
                          child: CustomText(
                            padding: EdgeInsets.only(top: 40,left: 50,right: 50),
                            title: 'JOIN TEAM',
                            onNotificationTap: ()
                            {

                            },
                            icon: Image.asset(Iconconstant.back_icon,fit: BoxFit.cover,), size: 25,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: CustomText(
                            padding: EdgeInsets.only(top: 50,left: 40,right: 40),
                            title: 'CREATE SCRAPPY CAMPAIGN',
                            onNotificationTap: ()
                            {

                            },
                            icon: Image.asset(Iconconstant.back_icon,fit: BoxFit.cover,), size: 20,),
                        ),

                           CustomText(
                            padding: EdgeInsets.only(top: 50,left: 40,right: 40),
                            title: 'MANAGE SCRAPPY CAMPAIGN',
                            onNotificationTap: ()
                            {

                            },
                            icon: Image.asset(Iconconstant.back_icon,fit: BoxFit.cover,), size: 20,),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
