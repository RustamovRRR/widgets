import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
        var oAnkitelebe = butunTelebeler[index];
        return Card(
          color: index % 2 == 0
              ? Colors.red.withOpacity(0.02)
              : Colors.red.withOpacity(0.2),
          child: ListTile(
            onTap: () {
              print("Element kliklendi $index");
              EasyLoading.showToast("Kliklendi",
                  duration: Duration(seconds: 3),
                  dismissOnTap: true,
                  toastPosition: EasyLoadingToastPosition.bottom);
            },
            onLongPress: () {
              _alertDialogIsler(context, oAnkitelebe);
            },
            title: Text(oAnkitelebe.name),
            leading: CircleAvatar(child: Text(oAnkitelebe.id.toString())),
            trailing: Text(oAnkitelebe.surname),
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

  void _alertDialogIsler(BuildContext myContext, Telebe telebe1) {
    showDialog(
        barrierDismissible: false,
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(telebe1.toString()),
            content: SingleChildScrollView(
                child: ListBody(
              children: [
                Text("Test1" * 100),
                Text("Test1" * 100),
                Text("Test1" * 100),
              ],
            )),
            actions: [
              ButtonBar(
                children: [
                  TextButton(onPressed: () {}, child: Text("OK")),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel")),
                ],
              )
            ],
          );
        });
  }
}

class Telebe {
  final int id;
  final String name;
  final String surname;

  Telebe(this.id, this.name, this.surname);
  @override
  String toString() {
    // TODO: implement toString
    return "Telebenin adi $name. Soyadi $surname id: $id";
  }
}
