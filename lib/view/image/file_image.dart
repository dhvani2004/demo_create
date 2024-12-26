import 'dart:io';

import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class FileImage extends StatefulWidget {
  const FileImage({super.key});

  @override
  State<FileImage> createState() => _FileImageState();
}

class _FileImageState extends State<FileImage> {
  XFile? _image;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  Future<void> _clickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: _pickImage,
              child: _image != null
                  ? Image.file(File(_image!.path), width: 350, height: 350)
                  : Container(
                height: 150,
                width: Get.width,
                decoration: BoxDecoration(
                  color: ColorConstant.imagebackground,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Upload a final photo",
                      style: AppTextTheme.semibold.copyWith(fontSize: 14, color: ColorConstant.blackColor),
                    ),

                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: _clickImage,
              child: _image != null
                  ? Image.file(File(_image!.path), width: 350, height: 350)
                  : Container(
                height: 150,
                width: Get.width,
                decoration: BoxDecoration(
                  color: ColorConstant.imagebackground,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Take a photo",
                      style: AppTextTheme.semibold.copyWith(fontSize: 14, color: ColorConstant.blackColor),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
