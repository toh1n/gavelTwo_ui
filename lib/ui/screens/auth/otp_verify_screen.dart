import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/screens/home_screens/bottom_nav_base_screen.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final TextEditingController otpTEController = TextEditingController();

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
              "Verify your phone number",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Please enter the verification code sent\nto +971503072666 via SMS.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: Colors.black,
                fontFamily: "Poppins",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 28),
              child: PinCodeTextField(
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: Colors.green.shade600,
                  fontWeight: FontWeight.bold,
                ),
                length: 6,
                obscureText: false,
                obscuringCharacter: '*',
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  fieldOuterPadding: EdgeInsets.zero,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.grey,
                  activeFillColor: Colors.white,
                  selectedFillColor: Colors.white,
                  inactiveFillColor: Colors.grey.shade100,
                  borderWidth: 0.8,
                  inactiveBorderWidth: 0.8,
                  disabledBorderWidth: 0.8,
                  activeBorderWidth: 0.8,
                  selectedBorderWidth: 0.8,
                ),
                cursorColor: Colors.black,
                enableActiveFill: true,
                controller: otpTEController,
                keyboardType: TextInputType.number,
                beforeTextPaste: (text) {
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const BottomNavBaseScreen()),
                    (route) => false);
              },
              child: const Text(
                "Verify OTP",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn't get the code? ",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const BottomNavBaseScreen()),
                          (route) => false);
                    },
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: const Text(
                      "Resend in 56 sec",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
