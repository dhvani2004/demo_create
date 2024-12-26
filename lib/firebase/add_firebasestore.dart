// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:demo_create/firebase/firebase.dart';
// import 'package:demo_create/firebase/firebasestore_screen.dart';
// import 'package:demo_create/firebase/toast_msg.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class AddFirebasestore extends StatefulWidget {
//   const AddFirebasestore({super.key});
//
//   @override
//   State<AddFirebasestore> createState() => _AddFirebasestoreState();
// }
//
// class _AddFirebasestoreState extends State<AddFirebasestore> {
//   final addFirebaseStore = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         title: Text("Add"),
//         actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 30,
//             ),
//             TextFormField(
//               maxLines: 4,
//               controller: addFirebaseStore,
//               decoration: InputDecoration(
//                   hintText: "What is in your mind ?", border: OutlineInputBorder()),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(onPressed: ()
//             {
//               FirebaseServices().addUserData(addFirebaseStore.text.toString());
//             }, child: Text("Add"))
//           ],
//         ),
//       ),
//     );
//   }
// }
