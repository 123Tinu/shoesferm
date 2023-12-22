import 'package:flutter/material.dart';
import 'package:shoesferm/view/auth_ui/sign_in_screen.dart';
import 'package:shoesferm/view/auth_ui/sign_up_screen.dart';
import 'package:shoesferm/view/widgets/button_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: const Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/nike_wsi.jpeg")),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(
                child: const Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SignIn();
                      },
                    ));
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                child: const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SignUp();
                      },
                    ));
                  });
                },
              ),
              const SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
