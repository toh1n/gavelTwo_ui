import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/screens/bottom_nav_base_screen.dart';
import 'package:gaveltwo_ui/ui/screens/splash_screen.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';

void main(){
  runApp(const GavelTwo());
}


class GavelTwo extends StatefulWidget {
  const GavelTwo({super.key});

  @override
  State<GavelTwo> createState() => _GavelTwoState();
}

class _GavelTwoState extends State<GavelTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(250, 41),
            backgroundColor: ColorManager.secondaryColor,
            elevation: 0,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          )
        )
      ),
      home: const BottomNavBaseScreen(),

    );
  }
}
