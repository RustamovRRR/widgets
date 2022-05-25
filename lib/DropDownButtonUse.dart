import 'package:flutter/material.dart';

class DropDownButtonUse extends StatefulWidget {
  const DropDownButtonUse({Key? key}) : super(key: key);

  @override
  State<DropDownButtonUse> createState() => _DropDownButtonUseState();
}

class _DropDownButtonUseState extends State<DropDownButtonUse> {
  String? _secilenSeher = null;
  List<String> seherler = ["Sumqayit", "Baki", "Gence", "Sheki", "Zaqatala", "New York"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Seher secin"),

        // items: [
        //   DropdownMenuItem(child: Text('Sumqayit'), value: "Sumqayit"),
        //   DropdownMenuItem(child: Text('Baki'), value: "Baki"),
        //   DropdownMenuItem(child: Text('Gence'), value: "Gence"),
        //   DropdownMenuItem(child: Text('Sheki'), value: "Sheki"),
        //   DropdownMenuItem(child: Text('Zaqatala'), value: "Zaqatala"),
        // ],
        items: seherler
            .map((e) => DropdownMenuItem(
                  child: Text(e),
                  value: e,
                ))
            .toList(),
        value: _secilenSeher,
        onChanged: (String? deyer) {
          setState(() {
            _secilenSeher = deyer.toString();
          });
        },
      ),
    );
  }
}
