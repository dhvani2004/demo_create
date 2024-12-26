import 'dart:io';

import 'package:flutter/material.dart';

import '../../custom/file_image.dart';

class FileImageScreen extends StatefulWidget {

  FileImageScreen({super.key});

  @override
  State<FileImageScreen> createState() => _FileImageScreenState();
}

class _FileImageScreenState extends State<FileImageScreen> {

  File? imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:GestureDetector(
                onTap: ()async {
                  imagePath  = await pickImage();
                  setState(() {
                    pickImage;
                  });
                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child:imagePath != null
                        ?Image.file(imagePath!,height: 300,width: 300,)
                        : Text("Select Image")
                  ),
                ),
        )
    );

  }

}
