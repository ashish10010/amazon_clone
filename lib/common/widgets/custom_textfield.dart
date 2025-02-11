import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;
  final int maxLines;

  const CustomTextfield({
    super.key,
    required this.hinttext,
    required this.controller,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    // final logger = Logger();
    // logger.d('Recieved hint-text $hinttext');
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hinttext,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter your $hinttext';
        }
        return null;
      },
      maxLines: maxLines,
    );
  }
}
