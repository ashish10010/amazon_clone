import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback ontap;
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.ontap,
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
      ),
      child: Text(
        buttonText,
      ),
    );
  }
}
