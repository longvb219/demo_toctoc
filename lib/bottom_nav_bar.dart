import 'package:demo_toctoc/home_screen/home_screen.dart';
import 'package:demo_toctoc/inbox_screen/inbox_screen.dart';
import 'package:demo_toctoc/profile_screen/profile_screen.dart';
import 'package:demo_toctoc/search_screen/search_screen.dart';
import 'package:demo_toctoc/upload_screen/upload_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    Scaffold(),
    InboxScreen(),
    ProfileScreen(),
  ];

  Color _bottomNavBarBackgroundPicker() {
    if (_selectedIndex < 2) {
      return Colors.grey;
    } else {
      return Colors.white;
    }
  }

  Color _bottomNavBarSelectedPicker() {
    if (_selectedIndex < 2) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UploadScreen()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_rounded,
              color: _bottomNavBarSelectedPicker(),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        backgroundColor: _bottomNavBarBackgroundPicker(),
        currentIndex: _selectedIndex,
        selectedItemColor: _bottomNavBarSelectedPicker(),
        onTap: _onItemTapped,
      ),
    );
  }
}
