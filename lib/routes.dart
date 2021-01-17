import 'package:flutter/material.dart';
import 'package:my_game_shelves_app/routes/game_add.dart';
import 'package:my_game_shelves_app/routes/game_view.dart';
import 'package:my_game_shelves_app/routes/settings.dart';
import 'package:my_game_shelves_app/routes/shelves.dart';
import 'package:my_game_shelves_app/routes/statistics.dart';

class RouteGenerator {
  static const String shelves = '/';
  static const String gameAdd = '/game_add';
  static const String gameView = '/game_view';
  static const String statistics = '/statistics';
  static const String setting = '/settings';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case shelves:
        return MaterialPageRoute(
          builder: (_) => Shelves(),
        );
      case gameAdd:
        return MaterialPageRoute(
          builder: (_) => GameAdd(),
        );
      case gameView:
        return MaterialPageRoute(
          builder: (_) => GameView(),
        );
      case statistics:
        return MaterialPageRoute(
          builder: (_) => Statistics(),
        );
      case setting:
        return MaterialPageRoute(
          builder: (_) => Settings(),
        );
      default:
        throw FormatException("Route not found");
    }
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
