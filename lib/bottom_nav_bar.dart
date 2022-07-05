import 'package:demo_toctoc/home_screen/home_screen.dart';
import 'package:demo_toctoc/inbox_screen/inbox_screen.dart';
import 'package:demo_toctoc/profile_screen/profile_screen.dart';
import 'package:demo_toctoc/search_screen/search_screen.dart';
import 'package:demo_toctoc/upload_screen/upload_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    Scaffold(),
    InboxScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UploadScreen()),
      );
    } else {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: Color.fromRGBO(38, 38, 38, 1), width: 0.8))),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:
                  Icon((selectedIndex == 0) ? Icons.home : Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  (selectedIndex == 1) ? Icons.search : Icons.search_outlined),
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
              icon: Icon(
                  (selectedIndex == 3) ? Icons.inbox : Icons.inbox_outlined),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  (selectedIndex == 4) ? Icons.person : Icons.person_outline),
              label: 'Profile',
            ),
          ],
          backgroundColor: _bottomNavBarBackgroundPicker(),
          currentIndex: selectedIndex,
          selectedItemColor: _bottomNavBarSelectedPicker(),
          unselectedItemColor: _bottomNavBarUnselectedPicker(),
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Color _bottomNavBarBackgroundPicker() {
    if (selectedIndex < 1) {
      return Colors.transparent;
    } else {
      return Colors.white;
    }
  }

  Color _bottomNavBarSelectedPicker() {
    if (selectedIndex < 1) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  Color _bottomNavBarUnselectedPicker() {
    if (selectedIndex < 1) {
      return Colors.white;
    } else {
      return const Color.fromRGBO(138, 139, 143, 1);
    }
  }
}
