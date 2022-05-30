import "package:flutter/material.dart";
import 'package:widgets/scrolls/CardListTileUse.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.amber,
                side: BorderSide(
                    color: Colors.blue, style: BorderStyle.solid, width: 2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))))),
        textTheme: TextTheme(
            headline1: TextStyle(
                color: Color.fromRGBO(156, 39, 176, 1),
                fontWeight: FontWeight.bold)),
      ),
      home: CardListTileUse(),
    );
  }
}
