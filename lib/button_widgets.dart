import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextButton(
          onPressed: () {},
          style: ButtonStyle(
              // backgroundColor: MaterialStateProperty.all(Colors.red),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.teal;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Colors.orange;
                }
                return null;
              }),
              foregroundColor: MaterialStateProperty.all(Colors.yellow),
              overlayColor:
                  MaterialStateProperty.all(Colors.yellow.withOpacity(0.3))),
          child: Text("Simple Text Button")),
      TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Text button with Icon")),
      ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.red, onPrimary: Colors.blue),
          child: Text("Simple Elevated Button")),
      ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Elevated button with Icon")),
      OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
      OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Outlined Button"))
    ]);
  }
}
