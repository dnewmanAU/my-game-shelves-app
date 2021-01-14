import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      backgroundColor: Color.fromRGBO(243, 201, 158, 1),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: "Shelves",
          icon: Icon(Icons.collections),
        ),
        BottomNavigationBarItem(
          label: "Settings",
          icon: Icon(Icons.settings),
        )
      ],
    );
  }
}
