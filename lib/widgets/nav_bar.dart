import 'package:flutter/material.dart';
import 'package:my_game_shelves_app/routes.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "Shelves",
          icon: Icon(Icons.collections),
        ),
        BottomNavigationBarItem(
          label: "Random",
          icon: Icon(Icons.casino),
        ),
        BottomNavigationBarItem(
          label: "Statistics",
          icon: Icon(Icons.analytics),
        ),
        BottomNavigationBarItem(
          label: "Settings",
          icon: Icon(Icons.settings),
        )
      ],
      selectedItemColor: Colors.blue,
      backgroundColor: Color.fromRGBO(243, 201, 158, 1),
      type: BottomNavigationBarType.fixed,
      onTap: _navigate,
    );
  }

  void _navigate(int index) {
    switch (index) {
      case 0:
        Navigator.popAndPushNamed(context, RouteGenerator.shelves);
        break;
      case 1:
        Navigator.popAndPushNamed(context, RouteGenerator.shelves);
        break;
      case 2:
        Navigator.popAndPushNamed(context, RouteGenerator.statistics);
        break;
      case 3:
        Navigator.popAndPushNamed(context, RouteGenerator.setting);
        break;
    }
  }
}
