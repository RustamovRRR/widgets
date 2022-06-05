import 'package:flutter/material.dart';

class TelebeListi extends StatelessWidget {
  const TelebeListi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int elementSayi = ModalRoute.of(context)!.settings.arguments as int;
    List<Telebe> butunTelebeler = List.generate(
        elementSayi,
        (index) =>
            Telebe(index + 1, "Name: ${index + 1}", "surname: ${index + 1}"));
    print("element sayi: $elementSayi");
    return Scaffold(
      appBar: AppBar(
        title: Text("Telebe listi"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(
                  butunTelebeler[index].id.toString(),
                ),
              ),
              title: Text(butunTelebeler[index].name),
              trailing: Text(butunTelebeler[index].surname),
            );
          },
          itemCount: elementSayi),
    );
  }
}

class Telebe {
  final int id;
  final String name;
  final String surname;

  Telebe(this.id, this.name, this.surname);
}
