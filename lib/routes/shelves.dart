import 'package:flutter/material.dart';

class Shelves extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Text(
              "Game shelves",
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
      ),
    );
  }
}
