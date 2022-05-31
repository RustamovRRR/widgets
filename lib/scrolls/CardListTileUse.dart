import 'package:flutter/material.dart';

class CardListTileUse extends StatelessWidget {
  const CardListTileUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CardListTile"),
      ),
      body: Center(
        child: singleChildScrollUse(),
      ),
    );
  }

  SingleChildScrollView singleChildScrollUse() {
    return SingleChildScrollView(
        child: Column(
          children: [
            tekListElemani(),
            tekListElemani(),
            tekListElemani(),
            tekListElemani(),
            tekListElemani(),
            tekListElemani(),
            tekListElemani(),
            tekListElemani(),
            tekListElemani(),
            tekListElemani(),
            tekListElemani(),
            tekListElemani(),
          ],
        ),
      );
  }

  Column tekListElemani() {
    return Column(
      children: [
        Card(
          color: Color.fromARGB(255, 255, 68, 68).withOpacity(0.5),
          shadowColor: Colors.blue,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          child: ListTile(
            textColor: Colors.white.withOpacity(0.5),
            iconColor: Colors.white.withOpacity(0.5),
            leading: Icon(Icons.add_to_queue),
            subtitle: Text('Your text here'),
            title: Text('ADD'),
            trailing: Icon(Icons.verified),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 2,
          endIndent: 2,
        ),
      ],
    );
  }
}
