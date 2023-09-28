import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/screens/home_screen.dart';
import 'package:gaveltwo_ui/ui/screens/profile_screen.dart';
import 'package:gaveltwo_ui/ui/screens/selling_form_screen.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';

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
    return  Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: _screenList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: ColorManager.secondaryColor,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.account_tree_outlined),label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Menu"),
        ],
      ),
    );
  }
}
