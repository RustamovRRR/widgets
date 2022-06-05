import 'package:flutter/material.dart';
import 'package:widgets/navigation/telebe_listi.dart';

class TelebeDetay extends StatelessWidget {
  final Telebe secilenTelebe;
  const TelebeDetay({required this.secilenTelebe, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var secilen = ModalRoute.of(context)!.settings.arguments as Telebe;
    print("Secilen telebe ::: ${secilen.name}");
    return Scaffold(
      appBar: AppBar(
        title: Text('TelebeDetay'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(secilenTelebe.id.toString()),
            Text(secilenTelebe.name),
            Text(secilenTelebe.surname),
          ],
        ),
      ),
    );
  }
}
