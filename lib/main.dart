import "package:flutter/material.dart";
import 'package:widgets/my_counter_page.dart';

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
        textTheme: TextTheme(
            headline1:
                TextStyle(color: Colors.purple, fontWeight: FontWeight.bold)),
      ),
      home: MyCounterPage(),
    );
  }
}
