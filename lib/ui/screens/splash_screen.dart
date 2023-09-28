import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/screens/welcome_screen.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  
  void closeSplashScreen(){
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const WelcomeScreen()), (route) => false);
    });
  }

  @override
  void initState() {
    super.initState();
    closeSplashScreen();
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Center(
        child: Image.asset(
          ImageManager.logoPNG,
          height: 96,
          width: 94,
        ),
      ),
    );
  }
}
