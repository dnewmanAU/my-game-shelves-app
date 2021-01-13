import 'package:flutter/material.dart';
import 'package:my_game_shelves_app/routes/shelves.dart';

class RouteGenerator {
  static const String shelves = '/';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case shelves:
        return MaterialPageRoute(
          builder: (_) => Shelves(),
        );
    }
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
