import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/screens/auth/otp_verify_screen.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController phoneNumberTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              ImageManager.textIconLogoPNG,
              height: 74,
              width: 207,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            const Text(
              "Enter your phone number",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'You will receive a verification code to this \n phone number.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: Colors.black,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33.0, right: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xff9b9595),
                        ),
                      ),
                      child: Image.asset(ImageManager.uaeFlagPNG),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xff9b9595),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            flex: 1,
                            child: Text(
                              "+971",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const VerticalDivider(
                            width: 10,
                            thickness: 1,
                            indent: 7,
                            endIndent: 6,
                            color: Color(0xffC7C3C3),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              //  color: Colors.red,
                              child: TextFormField(
                                controller: phoneNumberTEController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 3),
                                  border: InputBorder.none,
                                  hintText: 'Enter Your Phone Number',
                                  hintStyle: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffC7C3C3),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const OtpVerifyScreen()));
              },
              style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
              child: const Text(
                "Send OTP",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const OtpVerifyScreen()));
              },
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              child: const Text(
                "Continue as Guest",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
