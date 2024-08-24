import 'package:another_flushbar/flushbar.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plants_manager/domain/provider/user_provider.dart';
import 'package:plants_manager/utils/headline_text.dart';
import 'package:plants_manager/utils/primary_button.dart';
import '../../domain/database/user_account_information.dart';
import '../../utils/input_style.dart';

class Login extends ConsumerStatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends ConsumerState<Login> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();
  bool obscureText = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 48.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sign in', style: headlineMedium),
                          const Text("Hi! Welcome back, you've been missed"),
                        ],
                      ),
                      Image.asset(
                        'assets/brand_logo.png',
                        width: 80,
                        height: 80,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32.0),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email cannot be empty';
                      } else if (!EmailValidator.validate(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    decoration: emailInputDecoration
                  ),
                  const SizedBox(height: 32.0),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: obscureText,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password cannot be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                      ),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/resetPassword');
                    },
                    child: Text('Password reset'),

                  ),
                  const SizedBox(height: 32.0),
                  ElevatedButton(
                    onPressed: _signInValidator,
                    style: primaryButtonStyle,
                    child: Text('Sign in', style: primaryTextStyle),
                  ),
                  const SizedBox(height: 32.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/registration');
                    },
                    child: const Text.rich(
                      TextSpan(
                        text: 'Are you new here? ',
                        children: [
                          TextSpan(
                            text: 'Create an account',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  Divider(height: 1),
                  //OutlinedButton(onPressed: (){}, child: Text('Continuue with Google'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void loginFailedMessage(BuildContext context) {
    _emailController.clear();
    _passwordController.clear();
    Flushbar(
      title: 'Login failed',
      message: 'Invalid email or password',
      duration: const Duration(seconds: 10),
      backgroundColor: Colors.redAccent,
      flushbarPosition: FlushbarPosition.TOP,
    ).show(context);
  }

  void _signInValidator() async{
    if (_formKey.currentState?.validate() == true) {
      final response = await ref.read(userRepositoryProvider).signIn(
          _emailController.text,
          _passwordController.text,
          context
      );
      if (response) {
        setUpUserAccountInformationBox();
        Navigator.pushReplacementNamed(context, '/myHomePage');
      } else {
        loginFailedMessage(context);
      }
    } else {
      loginFailedMessage(context);
    }
  }


}
