import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth {
  signin,
  signup,
}

class AuthPage extends StatefulWidget {
  static const String routeName = '/auth-page';
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  Auth _auth = Auth.signup;

  final _signupFormKey = GlobalKey<FormState>();
  final _signinFormKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: GlobalVariables.greybackgroundcolor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5),
            ),
            ListTile(
              title: const Text(
                'Create Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == Auth.signup)
              Container(
                padding: const EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                child: Form(
                  key: _signupFormKey,
                  child: Column(
                    children: [
                      CustomTextfield(
                        hinttext: 'Name',
                        controller: _nameController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        hinttext: 'Email',
                        controller: _emailController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextfield(
                        hinttext: 'Password',
                        controller: _passwordController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                        buttonText: 'Sign Up',
                        ontap: () {},
                      )
                    ],
                  ),
                ),
              ),
            ListTile(
              title: const Text(
                'Sign In.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
