import 'dart:io';
import 'package:flutter/material.dart';
import '../../custom/file_image.dart';

class MulitpleFileImageScreen extends StatefulWidget {
  MulitpleFileImageScreen({super.key});

  @override
  State<MulitpleFileImageScreen> createState() => _MulitpleFileImageScreenState();
}

class _MulitpleFileImageScreenState extends State<MulitpleFileImageScreen> {
  List<File?> imagePaths = List.filled(5, null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              onTap: () async {

                final pickedImage = await pickImage();
                if (pickedImage != null) {
                  setState(() {
                    imagePaths[index] = pickedImage;
                  });
                }
              },
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: imagePaths[index] != null
                      ? Image.file(imagePaths[index]!, height: 300, width: 300)
                      : Icon(Icons.add),
                ),
              )
          );
        },
      ),
    );
  }
}
