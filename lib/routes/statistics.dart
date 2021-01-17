import 'package:flutter/material.dart';
import 'package:my_game_shelves_app/widgets/nav_bar.dart';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: Center(child: Text('Statistics screen')),
          bottomNavigationBar: NavBar(),
        ),
      ),
    );
  }
}
