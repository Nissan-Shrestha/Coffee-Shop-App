import 'package:coffee_shop_app/screens/home/home_screen.dart';
import 'package:coffee_shop_app/screens/navigation/NavIcon.dart';
import 'package:flutter/material.dart';

class Navscreen extends StatefulWidget {
  const Navscreen({super.key});

  @override
  State<Navscreen> createState() => _NavscreenState();
}

class _NavscreenState extends State<Navscreen> {
  int _currentIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() => _currentIndex = index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Navicon(
                asset: 'assets/images/Home.png',
                isActive: _currentIndex == 0,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Navicon(
                asset: 'assets/images/Heart.png',
                isActive: _currentIndex == 1,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Navicon(
                asset: 'assets/images/Bag.png',
                isActive: _currentIndex == 2,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Navicon(
                asset: 'assets/images/bell.png',
                isActive: _currentIndex == 3,
              ),
              label: 'Notifications',
            ),
          ],
        ),
      ),
    );
  }
}
