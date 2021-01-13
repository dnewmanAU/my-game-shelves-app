import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_game_shelves_app/routes.dart';

void main() async {
  runApp(GameShelf());
}

class GameShelf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialAppWithTheme();
  }
}

class MaterialAppWithTheme extends StatefulWidget {
  @override
  _MaterialAppWithThemeState createState() => _MaterialAppWithThemeState();
}

class _MaterialAppWithThemeState extends State<MaterialAppWithTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteGenerator.shelves,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
