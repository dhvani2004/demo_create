import 'dart:io';
import 'package:image_picker/image_picker.dart';

  // Pick Image
  Future<File> pickImage() async {
     XFile? image = await (ImagePicker().pickImage(source: ImageSource.gallery));
    return File(image!.path);
  }

  //Click Image
  Future<File> clickimage()async{
    XFile? image = await (ImagePicker().pickImage(source: ImageSource.camera));
    return File(image!.path);
  }


