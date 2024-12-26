// import 'package:demo_create/bottom_nvigation/style_1/all_screens.dart';
// import 'package:demo_create/bottom_nvigation/style_3/all_screens.dart';
// import 'package:demo_create/bottom_nvigation/style_3/buttom_navigation.dart';
// import 'package:demo_create/bottom_nvigation/style_3/icon.dart';
// import 'package:demo_create/bottom_nvigation/style_3/screen.dart';
// import 'package:demo_create/custom_widgets/colorconstant.dart';
// import 'package:demo_create/custom_widgets/text_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ScreenDemo3 extends StatefulWidget {
//   const ScreenDemo3({super.key});
//
//   @override
//   State<ScreenDemo3> createState() => _ScreenDemo3State();
// }
//
// class _ScreenDemo3State extends State<ScreenDemo3> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Stack(
//             children: [
//               Image.asset(
//                 "assets
//                 fit: BoxFit.cover,
//                 width: Get.width,
//                 height: Get.height,
//               ),
//               Positioned(
//                 top: 0,
//                 left: 0,
//                 right: 0,
//                 child: Column(
//                   children: [
//                     Image.asset(
//                       "assets/images/appbar_background.png",
//                       fit: BoxFit.cover,
//                       width: double.infinity,
//                       height: 150,
//                     ),
//
//                     Stack(
//                       children: [
//                         Image.asset("assets/image
//                           fit: BoxFit.cover,
//                         ),
//                         Positioned(
//                           right:200,
//                           top: 270,
//                           child: Image.asset(Iconconstant.coconut,fit: BoxFit.cover,),width: 350,height: 450,),
//                         Positioned(
//                             child: Column(
//                               children: [
//                                 Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 80,left: 50,right: 50),
//                                       child: Image.asset("assets/images/text_background.png",height: 90,width: 300,),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 110,left: 110,right: 50),
//                                       child: Positioned(
//                                           child:
//                                           Row(children: [Text("CREATE TEAM",style: AppTextTheme.bold.copyWith(fontSize: 20,color: Colors.pink),),SizedBox(width: 10,),Image.asset(Iconconstant.back_icon,width: 30,height: 30,)],)),
//                                     )
//                                   ],
//                                 ),
//                                 Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 10,left: 50,right: 50),
//                                       child: Image.asset("assets/images/text_background.png",height: 90,width: 300,),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 40,left: 110,right: 50),
//                                       child: Positioned(
//                                           child:
//                                           Row(children: [Text("JOIN TEAM",style: AppTextTheme.bold.copyWith(fontSize: 20,color: Colors.pink),),SizedBox(width: 10,),Image.asset(Iconconstant.back_icon,width: 30,height: 30,)],)),
//                                     )
//                                   ],
//                                 ),
//                                 Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 30,left: 50,right: 50),
//                                       child: Image.asset("assets/images/text_background.png",height: 90,width: 300,),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 60,left: 100,right: 50),
//                                       child: Positioned(
//                                           child:
//                                           Row(children: [Text("CREATE SCRAPPY CAMPAIGN",style: AppTextTheme.bold.copyWith(fontSize: 15,color: Colors.pink),),SizedBox(width: 10,),Image.asset(Iconconstant.back_icon,width: 30,height: 30,)],)),
//                                     )
//                                   ],
//                                 ),
//                                 Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 50,left: 50,right: 50),
//                                       child: Image.asset("assets/images/text_background.png",height: 90,width: 300,),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 80,left: 100,right: 50),
//                                       child: Positioned(
//                                           child:
//                                           Row(children: [Text("MANAGE SCRAPPY CAMPAIGN",style: AppTextTheme.bold.copyWith(fontSize: 15,color: Colors.pink),),SizedBox(width: 10,),Image.asset(Iconconstant.back_icon,width: 30,height: 30,)],)),
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ))
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//
//           // Positioned App Bar Background
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             child: Stack(
//               children: [
//                 Image.asset(
//                   "assets/images/appbar_background.png",
//                   fit: BoxFit.cover,
//                   width: double.infinity,
//                   height: 150,
//                 ),
//                 Positioned(
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 10,top: 60,right: 10),
//                       child: Row(
//                         children: [
//                           Text("Create",style: AppTextTheme.bold.copyWith(color: Colors.white,fontSize: 25),),
//                           Spacer(),
//                           Image.asset("assets/images/notification.png",height: 50,width: 50,)
//                         ],
//                       ),
//                     )),],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
