import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:demo_create/to_do/firebase.dart';
import 'package:demo_create/to_do/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  final _addTaskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Task"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            TextFormField(
              maxLines: 2,
              controller: _addTaskController,
              decoration: InputDecoration(hintText: "Add your Task",
              border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            ElevatedButton( style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstant.bgColor,
                foregroundColor: ColorConstant.whiteColor,
                side: BorderSide(width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),padding: EdgeInsets.symmetric(vertical: 20,horizontal: 150)
            ),
                onPressed: ()
                {
                  ToDoFirebaseServices().addUserData(_addTaskController.text.toString());
                  Get.to(()=>HomeScreen());
                },
                child: Text("Add",style: AppTextTheme.bold.copyWith(color: ColorConstant.blackColor),))
          ],
        ),
      ),
    );
  }
}
