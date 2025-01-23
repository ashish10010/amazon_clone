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
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hinttext,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
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
