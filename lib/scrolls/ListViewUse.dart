import 'package:flutter/material.dart';

class ListViewUse extends StatelessWidget {
  ListViewUse({Key? key}) : super(key: key);

  List<Telebe> butunTelebeler = List.generate(
      500,
      (index) => Telebe(
          index + 1, "Telebe adi ${index + 1}", "Telebe soyadi ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telebe Listi"),
      ),
      body: ListView(
        children: butunTelebeler
            .map((telebe) => ListTile(
                  title: Text(telebe.name),
                  leading: CircleAvatar(child: Text(telebe.id.toString())),
                  trailing: Text(telebe.surname),
                ))
            .toList(),
      ),
    );
  }
}

class Telebe {
  final int id;
  final String name;
  final String surname;

  Telebe(this.id, this.name, this.surname);
}
