import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:demo_create/custom_widgets/text_theme.dart';
import 'package:demo_create/to_do/add_task.dart';
import 'package:demo_create/to_do/firebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final ToDoFirebaseServices firebaseServices = ToDoFirebaseServices();
  final _updateController = TextEditingController();

  void showMyDialog(String id, String currentTitle) {
    _updateController.text = currentTitle;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Update"),
          content: TextFormField(
            controller: _updateController,
            decoration: InputDecoration(hintText: "Edit"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                final newTitle = _updateController.text.trim();
                if (newTitle.isNotEmpty) {
                  firebaseServices.updateUserData(id, newTitle);
                  setState(() {});
                }
                Navigator.pop(context);
              },
              child: Text("Update"),
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do List"),),
      body: FutureBuilder(
        future: firebaseServices.viewUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("An error occurred"));
          }
          final userList = snapshot.data;

          if (userList == null || userList.isEmpty) {
            return Center(
              child: Text("No data available"),
            );
          }

          return ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              final data = userList[index];
              final id = data['id'].toString();

              return Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  child: Container(
                    height: 80,
                    width: Get.width,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            data['title'],
                            style: AppTextTheme.medium.copyWith(
                                color: ColorConstant.blackColor, fontSize: 20),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              showMyDialog(id, data['title']);
                            },
                            icon: Icon(Icons.edit),
                            color: Colors.black,
                          ),
                          IconButton(
                            onPressed: () {
                              firebaseServices.deleteUserData(id);
                              setState(() {});
                            },
                            icon: Icon(Icons.delete),
                            color: Colors.red,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        Get.to(()=> AddTaskScreen());
      },child: Icon(Icons.add),),
    );
  }
}
