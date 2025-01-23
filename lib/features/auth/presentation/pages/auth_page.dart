import 'package:amazon_clone/features/auth/presentation/widgets/auth_form.dart';
import 'package:amazon_clone/features/auth/presentation/widgets/auth_options.dart';
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
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailcontroller.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            AuthOptions(
                title: 'Create Account',
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Enum? val) {
                  setState(() {
                    _auth = val! as Auth;
                  });
                }),
            if (_auth == Auth.signup)
              AuthForm(
                formKey: _signupFormKey,
                fields: [
                  {
                    'hinttext': 'Name',
                    'controller': _nameController,
                  },
                  {
                    'hinttext': 'Email',
                    'controller': _emailcontroller,
                  },
                  {
                    'hinttext': 'Password',
                    'controller': _passwordController,
                  },
                ],
                onSubmit: () {
                  if (_signupFormKey.currentState!.validate()) {
                    //handle sign up logics.
                  }
                },
                buttonText: 'Sign Up.',
              ),
            AuthOptions(
              title: 'Sign In',
              value: Auth.signin,
              groupValue: _auth,
              onChanged: (Enum? val) {
                setState(() {
                  _auth = val! as Auth;
                });
              },
            ),
            if (_auth == Auth.signin)
              AuthForm(
                formKey: _signinFormKey,
                fields: [
                  {
                    'hinttext': 'Email',
                    'controller': _emailcontroller,
                  },
                  {
                    'hinttext': 'Password',
                    'controller': _passwordController,
                  }
                ],
                onSubmit: () {
                  if (_signinFormKey.currentState!.validate()) {
                    //handle sign up logics.
                  }
                },
                buttonText: 'Sign In.',
              )
          ],
        ),
      ),
    );
  }
}
