import 'package:demo_create/bottom_nvigation/style_1/all_screens.dart';
import 'package:demo_create/bottom_nvigation/style_3/all_screens.dart';
import 'package:demo_create/bottom_nvigation/style_3/home.dart';
import 'package:demo_create/bottom_nvigation/style_3/icon.dart';
import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarExample3 extends StatefulWidget {
  const BottomNavigationBarExample3({super.key});

  @override
  State<BottomNavigationBarExample3> createState() =>
      _BottomNavigationBarExample3State();
}

class _BottomNavigationBarExample3State
    extends State<BottomNavigationBarExample3> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen3(),
    const MainDemo(),
    const ShoppingScreen3(),
    const home3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: _pages[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: Get.width,
        height: 110,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bottom nav.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Home Button
              GestureDetector(
                onTap: () => _onItemTapped(0),
                child: Image.asset(
                  _selectedIndex == 0 ? Iconconstant.home1 : Iconconstant.home,
                  height: 60,
                  width: 60,
                ),
              ),
              // Create Button
              GestureDetector(
                onTap: () => _onItemTapped(1),
                child: Image.asset(
                  _selectedIndex == 1 ? Iconconstant.create1 : Iconconstant.create,
                  height: 60,
                  width: 60,
                ),
              ),
              // Shop Button
              GestureDetector(
                onTap: () => _onItemTapped(2),
                child: Image.asset(
                  _selectedIndex == 2 ? Iconconstant.shop1 : Iconconstant.shop,
                  height: 60,
                  width: 60,
                ),
              ),
              // Profile Button
              GestureDetector(
                onTap: () => _onItemTapped(3),
                child: Image.asset(
                  _selectedIndex == 3 ? Iconconstant.profile1 : Iconconstant.profile,
                  height: 60,
                  width: 60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
