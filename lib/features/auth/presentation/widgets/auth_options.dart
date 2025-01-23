import 'package:flutter/material.dart';

class AuthOptions extends StatelessWidget {
  final String title;
  final Enum value;
  final Enum groupValue;
  final ValueChanged<Enum?> onChanged;
  const AuthOptions({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          )),
      leading: Radio<Enum>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}
