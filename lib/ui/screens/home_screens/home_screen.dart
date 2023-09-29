import 'package:flutter/material.dart';
import 'package:gaveltwo_ui/ui/screens/home_screens/tab_bar_item/gavel_it_screen.dart';
import 'package:gaveltwo_ui/ui/screens/home_screens/tab_bar_item/gaveled_screen.dart';
import 'package:gaveltwo_ui/ui/utils/color_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            toolbarHeight: 5,
            backgroundColor: ColorManager.primaryColor,
            bottom: const TabBar(
              indicatorColor: ColorManager.secondaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: ColorManager.secondaryColor,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              unselectedLabelStyle:
                  TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
              tabs: [
                Tab(
                  text: "Gavel It",
                ),
                Tab(
                  text: "Gaveled",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              GaveledItScreen(),
              GaveledScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
