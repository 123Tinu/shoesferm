import 'package:flutter/material.dart';
import 'package:shoesferm/view/auth_ui/sign_up_screen.dart';
import 'package:shoesferm/view/widgets/textfield_widget.dart';
import '../widgets/button_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _emailController3 = TextEditingController();
  final _loginKey3 = GlobalKey<FormState>();
  bool isLoading3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _loginKey3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 75,
                ),
                const Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 75,
                ),
                SizedBox(
                  width: 300,
                  height: 60,
                  child: Text(
                    'Enter the email address associated with your account and we\'ll sent you a link to reset your password.',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                MyTextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController3,
                  hintText: 'Email',
                  obscureText: false,
                  prefixIcon: const Icon(
                    Icons.mail,
                  ),
                  suffixIcon: null,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please input your email";
                    }
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      return "Input a valid email address";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                MyButton(
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  onTap: () async {
                    if (_loginKey3.currentState!.validate()) {
                      setState(() {
                        isLoading3 = true;
                      });
                    }
                  },
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const SignUp();
                            },
                          ));
                        });
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
