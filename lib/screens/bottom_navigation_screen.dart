import 'package:flutter/material.dart';
import 'package:xianinfotech_task/screens/home_screen/home_screen.dart';
import 'package:xianinfotech_task/screens/menu_screen.dart';
import 'package:xianinfotech_task/screens/dashboard_screen.dart';
import 'package:xianinfotech_task/screens/items_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    HomeScreen(),
    DashboardScreen(),
    MenuScreen(),
    ItemsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black54,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outline_blank_sharp),
            label: 'Items',
            // backgroundColor: Color(0xfffd9d58)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dehaze),
            label: 'Menu',
          )
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        iconSize: 40,
        onTap: (int index) {
          switch (index) {
            case 0:
              HomeScreen();
            case 1:
              DashboardScreen();
            case 2:
             ItemsScreen();
            case 3:
              MenuScreen();
          }
          setState(() {
            _selectedIndex = index;
          });
        },
        elevation: 5,
      ),
    );
  }
}
