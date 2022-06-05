import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purple Page"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Purple Page",
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: Text("Back"),
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              alignment: Alignment.center,
            ),
          ),
        ],
      )),
    );
  }
}
