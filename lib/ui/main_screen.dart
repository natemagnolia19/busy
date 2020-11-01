import 'package:flutter/material.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
  ];
  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 35,
              selectedFontSize: 0,
              unselectedFontSize: 0,
              selectedIconTheme: IconThemeData(color: Colors.blue),
              unselectedIconTheme: IconThemeData(color: Colors.black),
              unselectedLabelStyle: TextStyle(color: Colors.grey),
              fixedColor: Colors.black,
              onTap: _onItemTapped,
              currentIndex: _selectedIndex,
              items: [
                BottomNavigationBarItem(
                  title: Text(''),
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  title: Text(''),
                  icon: Icon(Icons.description),
                ),
                BottomNavigationBarItem(
                  title: Text(''),
                  icon: Icon(Icons.notifications),
                ),
                BottomNavigationBarItem(
                  title: Text(''),
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
