import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({Key? key}) : super(key: key);

  int _ixtiyariEded = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _ixtiyariEded = Random().nextInt(100);
        Navigator.of(context).pop(_ixtiyariEded);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Red Page"),
          backgroundColor: Colors.red,
          // automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Red Page",
                style: TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _ixtiyariEded = Random().nextInt(100);
                Navigator.pop(context, _ixtiyariEded);
                // print(_ixtiyariEded);
              },
              child: Text("Back"),
              style: ElevatedButton.styleFrom(
                  alignment: Alignment.center, primary: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              child: Text("MaybePop use"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                alignment: Alignment.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  print("pop ola biler");
                } else {
                  print("pop ola bilmez");
                }
              },
              child: Text("CanPop use"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                alignment: Alignment.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/orangePage');
              },
              child: Text("Orange Page"),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                alignment: Alignment.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/orangePage1');
              },
              child: Text("Orange Page"),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
