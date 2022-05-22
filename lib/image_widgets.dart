import 'package:flutter/material.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.blueAccent.shade200,
            child: Image.asset(
              "assets/images/jamesbond.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blueAccent.shade200,
            child: Image.network(
              "https://www.007.com/wp-content/uploads/2020/07/007_WEBSITE_New-DB5-Production_LANDSCAPE.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
              // color: Colors.blueAccent.shade200,
              child: CircleAvatar(
            // child: Text(
            //   'E',
            //   style: Theme.of(context).textTheme.headline1,
            // ),
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/jamesbond.jpg"),
            // foregroundColor: Colors.white,
            radius: 100,
          )),
        ],
      ),
    );
  }
}
