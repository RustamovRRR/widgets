import "package:flutter/material.dart";

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
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
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
