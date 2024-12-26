// import 'package:demo_create/custom_widgets/colorconstant.dart';
// import 'package:demo_create/custom_widgets/text_theme.dart';
// import 'package:demo_create/firebase/add_firebasestore.dart';
// import 'package:demo_create/firebase/firebase.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class FirebasestoreScreen extends StatefulWidget {
//   const FirebasestoreScreen({super.key});
//
//   @override
//   State<FirebasestoreScreen> createState() => _FirebasestoreScreenState();
// }
//
// class _FirebasestoreScreenState extends State<FirebasestoreScreen> {
//   final FirebaseServices firebaseServices = FirebaseServices();
//   final updateController = TextEditingController();
//
//   void showMyDialog(String id, String currentTitle) {
//     updateController.text =
//         currentTitle; // Set the current title in the text field
//
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text("Update"),
//           content: TextFormField(
//             controller: updateController,
//             decoration: InputDecoration(hintText: "Edit"),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text("Cancel"),
//             ),
//             TextButton(
//               onPressed: () {
//                 final newTitle = updateController.text.trim();
//                 if (newTitle.isNotEmpty) {
//                   firebaseServices.updateUserData(id, newTitle);
//                   setState(() {});
//                 }
//                 Navigator.pop(context);
//               },
//               child: Text("Update"),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Data",
//           style: AppTextTheme.bold
//               .copyWith(fontSize: 20, color: ColorConstant.whiteColor),
//         ),
//       ),
//       body: FutureBuilder(
//         future: firebaseServices.viewUserData(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (snapshot.hasError) {
//             return Center(child: Text("An error occurred"));
//           }
//           final userList = snapshot.data;
//
//           if (userList == null || userList.isEmpty) {
//             return Center(
//               child: Text("No data available"),
//             );
//           }
//
//           return ListView.builder(
//             itemCount: userList.length,
//             itemBuilder: (context, index) {
//               final data = userList[index];
//               final id = data['id'];
//
//               return Container(
//                 child: Row(
//                   children: [
//                     Text(
//                       data['title'],
//                       style: AppTextTheme.medium.copyWith(
//                           color: ColorConstant.blackColor, fontSize: 20),
//                     ),
//                     Spacer(),
//                     IconButton(
//                       onPressed: () {
//                         showMyDialog(id, data['title']);
//                       },
//                       icon: Icon(Icons.edit),
//                       color: Colors.black,
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         firebaseServices.deleteUserData(id);
//                         setState(() {}); // Refresh the UI after deletion
//                       },
//                       icon: Icon(Icons.delete),
//                       color: Colors.red,
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Get.to(() => AddFirebasestore());
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
