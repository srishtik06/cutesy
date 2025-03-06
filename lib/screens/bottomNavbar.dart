import 'package:cutesy/screens/readnewsScreen.dart';
import 'package:flutter/material.dart';
import 'AppScreen.dart';
import 'HomeScreen.dart';
import 'ProfileScreen.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  // List of screens
  final List<Widget> _screens = [
    HomeScreen(),
    Appscreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: _screens[_selectedIndex], // Show the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: const Color(0xFFF7931A),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              width: swidth * 0.08,  // Responsive width
              height: sheight * 0.04, // Responsive height
              color: Colors.white,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/app.png',
              width: swidth * 0.08,
              height: sheight * 0.04,
              color: Colors.white,
            ),
            label: "App",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/user.png',
              width: swidth * 0.08,
              height: sheight * 0.04,
              color: Colors.white,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
