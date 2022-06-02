import 'package:flutter/material.dart';

class ListViewLayoutProblemi extends StatelessWidget {
  const ListViewLayoutProblemi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Layout Problem'),
      ),
      body: Container(
        height: 200,
        child: Row(
          children: [
            Text("Start"),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 70,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    width: 70,
                    color: Colors.orange.shade300,
                  ),
                  Container(
                    width: 70,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    width: 70,
                    color: Colors.orange.shade900,
                  ),
                  Container(
                    width: 70,
                    color: Colors.orange.shade600,
                  ),
                  Container(
                    width: 70,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    width: 70,
                    color: Colors.orange.shade900,
                  ),
                  Container(
                    width: 70,
                    color: Colors.orange.shade600,
                  ),
                  Container(
                    width: 70,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    width: 70,
                    color: Colors.orange.shade900,
                  ),
                  Container(
                    width: 70,
                    color: Colors.orange.shade600,
                  ),
                ],
              ),
            ),
            Text("End"),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
      ),
    );
  }

  Column columnIcindeListView() {
    return Column(
      children: [
        Text("Start"),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade300,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade300,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade900,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade600,
              ),
            ],
          ),
        ),
        Text("End"),
      ],
    );
  }
}
