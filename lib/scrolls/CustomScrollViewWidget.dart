import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Text("CustomScrollViewWidget"),
          backgroundColor: Colors.green,
          expandedHeight: 200,
          floating: true,
        ),
      ]),
    );
  }
}
