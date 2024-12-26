// import 'package:flutter/material.dart';
// import 'package:demo_create/custom_widgets/button/button.dart';
// import 'package:demo_create/custom_widgets/button/elevatedbutton.dart';
// import 'package:demo_create/custom_widgets/drop_downbutton/dropdown_button.dart';
//
// class Screen1 extends StatefulWidget {
//   const Screen1({super.key});
//
//   @override
//   State<Screen1> createState() => _Screen1State();
// }
//
// class _Screen1State extends State<Screen1> {
//   final List<String> _name = ["dhvani", "meet", "mitesh", "parth"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Custom UI Screen 1"),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             DropdownButtonWidget(
//               items: _name,
//               onChanged: (data) {
//                 print(data);
//               },
//             ),
//             const SizedBox(height: 20),
//             CustomElevatedButton(
//               text: 'Confirm Selection',
//               onPressed: () {
//                 // Add any action if needed
//               },
//               backgroundColor: Colors.blue,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
