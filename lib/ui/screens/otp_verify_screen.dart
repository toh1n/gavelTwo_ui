import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gaveltwo_ui/ui/screens/bottom_nav_base_screen.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
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
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 19
              ),
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 58,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: SvgPicture.asset(
                    ImageManager.uaeFlagSVG,
                    height: 23,
                    width: 26,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                const SizedBox(width: 8,),
                Container(
                  height: 50,
                  width: 242,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("+971"),
                      ),
                      VerticalDivider(
                        color: Colors.grey,  //color of divider
                        width: 10, //width space of divider
                        thickness: 2, //thickness of divider line
                        indent: 10, //Spacing at the top of divider.
                        endIndent: 10, //Spacing at the bottom of divider.
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const BottomNavBaseScreen()), (route) => false);
              },
              child: const Text(
                "Verify OTP",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didn't get the code? ",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12
                  ),
                ),
                TextButton(
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const BottomNavBaseScreen()), (route) => false);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero
                    ),
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
