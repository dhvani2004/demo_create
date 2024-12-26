// import 'dart:io';
// import 'package:demo_create/custom/file_image.dart';
// import 'package:demo_create/custom_widgets/button/elevatedbutton.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_storage/firebase_storage.dart'as firebase_storage;
//
// class ImageUpload extends StatefulWidget {
//   const ImageUpload({super.key});
//
//   @override
//   State<ImageUpload> createState() => _ImageUploadState();
// }
//
// class _ImageUploadState extends State<ImageUpload> {
//
//   firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance ; // instance to upload a images
//   File? imagePath;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: GestureDetector(
//               onTap: () async {
//                 imagePath = await pickImage();
//                 setState(() {
//                   pickImage();
//                 });
//               },
//               child: Container(
//                 height: 150,
//                 width: 150,
//                 color: Colors.grey[200],
//                 child: Center(
//                     child: imagePath != null
//                         ? Image.file(imagePath!.absolute, fit: BoxFit.cover)
//                         : Text("Pick Image")),
//               ),
//             ),
//           ),
//           CustomElevatedButton(
//             text: 'Upload Image',
//             onPressed: ()
//             {
//               firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance.ref("/filename");
//               firebase_storage.UploadTask uploadTask = ref.putFile(imagePath!.absolute);
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
