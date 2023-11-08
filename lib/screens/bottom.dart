
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:to_list/core/app_style.dart';
import 'package:to_list/screens/profile_screen.dart';

import 'dashboard_screen.dart';
import 'home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget> _wigetOptions=<Widget>[
    HomeScreen(),
    DashboardScreen(),
    ProfileScreen(),

  ];
  void _onItemTapped(int index){
  setState(() {
    _selectedIndex=index;

  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _wigetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Styles.defualtColor5,
        unselectedItemColor: Styles.defualtColor3,
        backgroundColor: Styles.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_list_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_list_regular),
              label: 'Dashboard To Do'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              label: 'Profile'),

        ],
      ),
    );
  }
}
