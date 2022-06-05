import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widgets/main.dart';
import 'package:widgets/navigation/red_page.dart';

class RouteGenerator {
  static Route<dynamic> _routeYarat(Widget gedilecekWidget) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(builder: (context) => gedilecekWidget);
    } else {
      return CupertinoPageRoute(builder: (context) => gedilecekWidget);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeYarat(AnaSehife());

      case '/redPage':
        return _routeYarat(RedPage());

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
