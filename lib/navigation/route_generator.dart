import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widgets/main.dart';
import 'package:widgets/navigation/red_page.dart';
import 'package:widgets/navigation/telebe_listi.dart';

class RouteGenerator {
  static Route<dynamic> _routeYarat(
      Widget gedilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          builder: (context) => gedilecekWidget, settings: settings);
    } else {
      return CupertinoPageRoute(
          builder: (context) => gedilecekWidget, settings: settings);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeYarat(AnaSehife(), settings);

      case '/redPage':
        return _routeYarat(RedPage(), settings);

      case '/telebeListi':
        return _routeYarat(TelebeListi(), settings);

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text("404"),
                  ),
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("404 Page Not Found")],
                    ),
                  ),
                ));
    }
  }
}
