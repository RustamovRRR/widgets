import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  MyCounterPage({Key? key}) : super(key: key);

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Buttona basilma miqdari",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            _sayac.toString(),
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _sayac++;
            });
          },
          child: Icon(Icons.plus_one)),
    );
  }
}
