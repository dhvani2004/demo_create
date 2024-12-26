import 'package:flutter/material.dart';

class Textformfiled extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String text;
  final String textTitle;
  final Color textColor;
  final Color titleColor;
  final bool isLabelTextShow;
  final double titleSize;
  final double hintFontSize;
  final double labelFontSize;

  const Textformfiled({
    Key? key,
    required this.title,
    required this.text,
    required this.controller,
    required this.textTitle,
    required this.textColor,
    required this.titleColor,
    required this.titleSize,
    required this.hintFontSize,
    required this.labelFontSize,
    required this.isLabelTextShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              title,
              style: TextStyle(color: titleColor, fontSize: titleSize),
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            controller: controller,
            style: TextStyle(fontSize: labelFontSize),
            decoration: InputDecoration(
              labelText: isLabelTextShow ? textTitle : null,
              hintText: text,
              hintStyle: TextStyle(color: textColor, fontSize: hintFontSize),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
