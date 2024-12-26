import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo_create/bottom_nvigation/style_2/all_screens.dart';
import 'package:demo_create/other/screen.dart';
import 'package:flutter/material.dart';

class ButtomNavigation2 extends StatefulWidget {
  const ButtomNavigation2({super.key});

  @override
  State<ButtomNavigation2> createState() => _ButtomNavigation2State();
}

class _ButtomNavigation2State extends State<ButtomNavigation2> {

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen2(),
    const FvScreen2(),
    const MainDemo2(),
    const ShoppingScreen2(),
    const PersonScreen2(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
          items: [
            Icon(Icons.add,size: 30,),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
            Icon(Icons.call_split, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: _onItemTapped,
      ),
    );
  }
}
