import 'package:demo_create/bottom_nvigation/style_1/all_screens.dart';
import 'package:demo_create/custom_widgets/colorconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
   const HomeScreen(),
    const FvScreen(),
    const ShoppingScreen(),
    const PersonScreen(),
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
        decoration: BoxDecoration(
          color: Colors.transparent,
           borderRadius: BorderRadius.all(
            const Radius.circular(100),
          ),
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
             Get.to(() => MainDemo());
          },
          child: Icon(
            Icons.add,
            color: ColorConstant.whiteColor,
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 0 ? Icons.home_filled : Icons.home,
                size: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 1
                    ? Icons.favorite
                    : Icons.favorite_border_sharp,
                size: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 2
                    ? Icons.shopping_cart_rounded
                    : Icons.shopping_cart_outlined,
                size: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 3 ? Icons.person : Icons.person_3_outlined,
                size: 24,
              ),
              label: '',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
