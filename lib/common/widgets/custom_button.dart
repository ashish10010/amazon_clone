import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback ontap;
  final Color? color;
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.ontap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(
          double.infinity,
          50,
        ),
        backgroundColor: color,
        foregroundColor: color == null ? Colors.white : Colors.black,
      ),
      child: Text(
        buttonText,
      ),
    );
  }
}
