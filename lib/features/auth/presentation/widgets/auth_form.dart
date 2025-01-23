import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final List<Map<String, dynamic>> fields; //[{hinttext, controller}]
  final VoidCallback onSubmit;
  final String buttonText;
  const AuthForm({
    super.key,
    required this.fields,
    required this.onSubmit,
    required this.buttonText,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: GlobalVariables.backgroundColor,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: GlobalVariables.backgroundColor,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              ...fields.map(
                (field) => Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: CustomTextfield(
                    hinttext: field['hinttext'] ?? '',
                    controller: field['controller'] ?? TextEditingController(),
                  ),
                ),
              ),
              CustomButton(
                buttonText: buttonText,
                ontap: onSubmit,
              )
            ],
          ),
        ),
      ),
    );
  }
}
