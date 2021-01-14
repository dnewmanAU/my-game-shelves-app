import 'package:flutter/material.dart';
import 'package:my_game_shelves_app/widgets/debug_data_table.dart';
import 'package:my_game_shelves_app/widgets/debug_list.dart';
import 'package:my_game_shelves_app/widgets/nav_bar.dart';

class Shelves extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: DebugDataTable(),
          ),
          bottomNavigationBar: NavBar(),
        ),
      ),
    );
  }
}
