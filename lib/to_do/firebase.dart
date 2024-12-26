import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_create/bottom_nvigation/style_1/all_screens.dart';
import 'package:demo_create/firebase/firebasestore_screen.dart';
import 'package:demo_create/firebase/toast_msg.dart';
import 'package:get/get.dart';

class ToDoFirebaseServices {
  final CollectionReference fireStore = FirebaseFirestore.instance.collection("To_Do"); // Reference to "User" collection

  // Add Method to FireStore
  Future<void> addUserData(String title) async {
    try {
      String id = DateTime.now().millisecondsSinceEpoch.toString();

      await fireStore.doc(id).set({
        "title": title,
        "id": id,
      });
      Get.to(() => HomeScreen());
    } catch (error) {
      FirebaseToastMsg().toastMessage(error.toString());
    }
  }

  // View Method to FireStore
  Future<List<Map<String, dynamic>>> viewUserData() async {
    try {
      QuerySnapshot querySnapshot = await fireStore.get();
      List<Map<String, dynamic>> userList = querySnapshot.docs.map((doc) {
        return doc.data() as Map<String, dynamic>;
      }).toList();
      return userList;
    } catch (error) {
      FirebaseToastMsg().toastMessage(error.toString());
      return [];
    }
  }

  // Delete Method to FireStore
  Future<void> deleteUserData(String id) async {
    try {
      await fireStore.doc(id).delete();
      FirebaseToastMsg().toastMessage("User data deleted successfully.");
    } catch (error) {
      FirebaseToastMsg().toastMessage("Error deleting user data: ${error.toString()}");
    }
  }

  // Update Method to FireStore
  Future<void> updateUserData(String id, String newTitle) async {
    try {
      await fireStore.doc(id).update({
        "title": newTitle,
      });
      FirebaseToastMsg().toastMessage("User data updated successfully.");
    } catch (error) {
      FirebaseToastMsg().toastMessage("Error updating user data: ${error.toString()}");
    }
  }
}
