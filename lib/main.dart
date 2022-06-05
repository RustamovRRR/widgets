import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets/navigation/red_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: AnaSehife(),
    );
  }
}

class AnaSehife extends StatelessWidget {
  const AnaSehife({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (redContex) => RedPage()));
            },
            child: Text("GO to Red Page IOS"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              alignment: Alignment.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (redContext) => RedPage()));
            },
            child: Text("GO to Red Page Android"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              alignment: Alignment.center,
            ),
          ),
        ]),
      ),
    );
  }
}

// import "package:flutter/material.dart";
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:widgets/scrolls/CustomScrollViewWidget.dart';
// import 'package:widgets/scrolls/GridViewClass.dart';
// import 'package:widgets/scrolls/listViewLayoutProblemi.dart';

// void main() {
//   runApp(MyApp());
//   configLoading();
// }

// void configLoading() {
//   EasyLoading.instance
//     ..displayDuration = const Duration(milliseconds: 2000)
//     ..indicatorType = EasyLoadingIndicatorType.fadingCircle
//     ..loadingStyle = EasyLoadingStyle.custom
//     ..indicatorSize = 45.0
//     ..radius = 10.0
//     ..progressColor = Colors.yellow
//     ..backgroundColor = Colors.green
//     ..indicatorColor = Colors.white
//     ..textColor = Colors.yellow
//     ..maskColor = Colors.blue.withOpacity(0.5)
//     ..userInteractions = true
//     ..dismissOnTap = false;
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "My Counter App",
//       theme: ThemeData(
//         primarySwatch: Colors.teal,
//         outlinedButtonTheme: OutlinedButtonThemeData(
//             style: OutlinedButton.styleFrom(
//                 backgroundColor: Colors.amber,
//                 side: BorderSide(
//                     color: Colors.blue, style: BorderStyle.solid, width: 2),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10))))),
//         textTheme: TextTheme(
//             headline1: TextStyle(
//                 color: Color.fromRGBO(156, 39, 176, 1),
//                 fontWeight: FontWeight.bold)),
//       ),
//       home: CustomScrollViewWidget(),
//       builder: EasyLoading.init(),
//     );
//   }
// }
