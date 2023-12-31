import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/screens/auth/sign_up_screen.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ImageManager.textIconLogoPNG,
              height: 94,
              width: 264,
            ),
            const SizedBox(
              height: 109,
            ),
            const Text(
              "Welcome to GAVEL",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                // fontFamily: "Poppins"
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: Colors.black,
                  fontFamily: "Poppins",
                ),
                children: [
                  TextSpan(text: 'Tap "'),
                  TextSpan(
                    text: 'Agree & Continue',
                    style: TextStyle(
                      fontWeight: FontWeight.w600, // Underline the text
                    ),
                  ),
                  TextSpan(text: '" to accept the \n '),
                  TextSpan(
                    text: "Terms of Service",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignUpScreen()));
              },
              child: const Text(
                "Agree & Continue",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
