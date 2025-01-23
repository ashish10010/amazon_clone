import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hinttext;
  final TextEditingController controller;

  const CustomTextfield({
    super.key,
    required this.hinttext,
    required this.controller,
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
        if (value == null) {
          return ('The fields cannot be empty!');
        }
        return null;
      },
    );
  }
}
