import 'package:flutter/material.dart';
import 'password_validator.dart';

class Password extends StatefulWidget {
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

  const Password({
    Key? key,
    required this.title,
    required this.controller,
    required this.text,
    required this.textTitle,
    required this.textColor,
    required this.titleColor,
    required this.isLabelTextShow,
    required this.titleSize,
    required this.hintFontSize,
    required this.labelFontSize,
  }) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool passwordVisible = false;
  String _errorMessage = '';

  void _checkPassword() {
    final password = widget.controller.text;
    setState(() {
      _errorMessage = PasswordValidator.validatePassword(password);
    });
  }

  // Method to check if password is valid (returns true if valid)
  bool isPasswordValid() {
    final password = widget.controller.text;
    return PasswordValidator.validatePassword(password).isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              widget.title,
              style: TextStyle(color: widget.titleColor, fontSize: widget.titleSize),
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            obscureText: !passwordVisible,
            controller: widget.controller,
            style: TextStyle(fontSize: widget.labelFontSize),
            decoration: InputDecoration(
              labelText: widget.isLabelTextShow ? widget.textTitle : null,
              hintText: widget.text,
              helperText: _errorMessage.isNotEmpty ? _errorMessage : null,
              helperStyle: TextStyle(color: Colors.red, fontSize: 13),
              hintStyle: TextStyle(color: widget.textColor, fontSize: widget.hintFontSize),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              fillColor: Colors.white,
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
              alignLabelWithHint: false,
              filled: true,
            ),
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            onChanged: (_) => _checkPassword(),
          ),
        ],
      ),
    );
  }
}
