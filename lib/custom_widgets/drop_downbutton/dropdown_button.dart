// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
//
// class DropdownButtonWidget extends StatefulWidget {
//   final List<String> items;
//   final Function(String) onChanged;
//
//   const DropdownButtonWidget({
//     super.key,
//     required this.items,
//     required this.onChanged,
//   });
//
//   @override
//   State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
// }
//
// class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
//   String? selectedValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 150),
//       child: Center(
//         child: DropdownButtonHideUnderline(
//           child: DropdownButton2(
//             isExpanded: true,
//             hint: const Text(
//               'Select Item',
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               overflow: TextOverflow.ellipsis,
//             ),
//             items: widget.items.map((String item) {
//               return DropdownMenuItem<String>(
//                 value: item,
//                 child: Text(item),
//               );
//             }).toList(),
//             value: selectedValue,
//             onChanged: (String? value) {
//               if (value != null) {
//                 setState(() {
//                   selectedValue = value;
//                   widget.onChanged(selectedValue? ""== "" )
//
//                 });
//               }
//             },
//             buttonStyleData: ButtonStyleData(
//               height: 50,
//               width: 150,
//               padding: const EdgeInsets.symmetric(horizontal: 14),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(14),
//                 border: Border.all(color: Colors.grey),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.1),
//                     offset: Offset(0, 4),
//                     blurRadius: 8,
//                   ),
//                 ],
//               ),
//             ),
//             iconStyleData: const IconStyleData(
//               icon: Icon(Icons.arrow_forward_ios_outlined),
//               iconSize: 14,
//               iconEnabledColor: Colors.black,
//               iconDisabledColor: Colors.grey,
//             ),
//             dropdownStyleData: DropdownStyleData(
//               maxHeight: 200,
//               width: 200,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(14),
//                 color: Colors.white,
//               ),
//               offset: const Offset(-20, 0),
//             ),
//             menuItemStyleData: const MenuItemStyleData(
//               height: 40,
//               padding: EdgeInsets.only(left: 14, right: 14),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
