import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/screens/home_screens/profile_screen.dart';
import 'package:gaveltwo_ui/ui/screens/home_screens/selling_form_screen.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';
import 'package:gaveltwo_ui/ui/utils/image_manager.dart';

import 'home_screen.dart';

class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({super.key});

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {
  int _currentIndex = 0;

  final List<Widget> _screenList = [
    const HomeScreen(),
    const SellingFormScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: ColorManager.secondaryColor,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                ImageManager.navBarHammerPNG,
                height: 34,
                width: 30,
              ),
              label: "Menu"),
          BottomNavigationBarItem(
              icon: Image.asset(
                ImageManager.navBarInfoPNG,
                height: 34,
                width: 30,
              ),
              label: "Menu"),
          BottomNavigationBarItem(
              icon: Image.asset(
                ImageManager.navBarUserPNG,
                height: 34,
                width: 30,
              ),
              label: "Menu"),
        ],
      ),
    );
  }
}
