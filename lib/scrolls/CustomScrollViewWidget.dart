import 'dart:math' as math;

import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          // title: Text("CustomScrollViewWidget"),
          backgroundColor: Colors.green,
          expandedHeight: 200,
          floating: true,
          snap: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('CustomScrollView Widget'),
            centerTitle: true,
            background: Image.asset(
              "assets/images/jamesbond.jpg",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            containersInSliverChildListDelegate,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(5),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikElementYaradanFunksiya,
                childCount: 3),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverFixedExtentList(
              delegate: SliverChildListDelegate(
                containersInSliverChildListDelegate,
              ),
              itemExtent: 300),
        ),
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                  _dinamikElementYaradanFunksiya,
                  childCount: 5),
              itemExtent: 300),
        ),
      ]),
    );
  }

  List<Widget> get containersInSliverChildListDelegate {
    return [
      Container(
        height: 150,
        color: Colors.teal.shade300,
        alignment: Alignment.center,
        child: Text(
          "Sabit list elementi 1",
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.amber.shade300,
        alignment: Alignment.center,
        child: Text(
          "Sabit list elementi 2",
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.red.shade300,
        alignment: Alignment.center,
        child: Text(
          "Sabit list elementi 3",
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.yellow.shade300,
        alignment: Alignment.center,
        child: Text(
          "Sabit list elementi 4",
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.brown.shade300,
        alignment: Alignment.center,
        child: Text(
          "Sabit list elementi 5",
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.blue.shade300,
        alignment: Alignment.center,
        child: Text(
          "Sabit list elementi 6",
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.pink.shade300,
        alignment: Alignment.center,
        child: Text(
          "Sabit list elementi 7",
          style: TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget? _dinamikElementYaradanFunksiya(BuildContext context, int index) {
    return Container(
      height: 150,
      color: _randomReng(),
      alignment: Alignment.center,
      child: Text(
        "Dinamik list elementi ${index + 1}",
        style: TextStyle(
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

Color _randomReng() {
  return Color.fromARGB(255, math.Random().nextInt(255),
      math.Random().nextInt(255), math.Random().nextInt(255));
}
