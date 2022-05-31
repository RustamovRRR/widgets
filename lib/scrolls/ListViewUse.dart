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
      body: listViewSeparatedMethod(),
    );
  }

  ListView listViewSeparatedMethod() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: index % 2 == 0
              ? Colors.red.withOpacity(0.02)
              : Colors.red.withOpacity(0.2),
          child: ListTile(
            onTap: () {
              print("Element kliklendi $index");
            },
            title: Text(butunTelebeler[index].name),
            leading:
                CircleAvatar(child: Text(butunTelebeler[index].id.toString())),
            trailing: Text(butunTelebeler[index].surname),
          ),
        );
      },
      itemCount: butunTelebeler.length,
      separatorBuilder: (BuildContext context, int index) {
        if ((index + 1) % 4 == 0) {
          return Divider(
            color: Colors.green.shade700,
            thickness: 3,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView listViewBuilderMethod() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: index % 2 == 0
              ? Colors.red.withOpacity(0.02)
              : Colors.red.withOpacity(0.2),
          child: ListTile(
            onTap: () {
              print("Element kliklendi $index");
            },
            title: Text(butunTelebeler[index].name),
            leading:
                CircleAvatar(child: Text(butunTelebeler[index].id.toString())),
            trailing: Text(butunTelebeler[index].surname),
          ),
        );
      },
      itemCount: butunTelebeler.length,
    );
  }

  ListView classicListView() {
    return ListView(
      children: butunTelebeler
          .map((telebe) => ListTile(
                title: Text(telebe.name),
                leading: CircleAvatar(child: Text(telebe.id.toString())),
                trailing: Text(telebe.surname),
              ))
          .toList(),
    );
  }
}

class Telebe {
  final int id;
  final String name;
  final String surname;

  Telebe(this.id, this.name, this.surname);
}
