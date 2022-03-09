import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

List<int> list = [];
List<int> list2 = [];

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    for (int i = 0; i <= 10; i++) {
      list.add(i);
      for (int j = 50; j <= 60; j++) {
        list2.add(j);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deligram Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Call the Custom widget here///
      home: const Scaffold(body: StateWidgetFlutter()),
    );
  }

}
class StateWidgetFlutter extends StatefulWidget {
  const StateWidgetFlutter({Key? key}) : super(key: key);

  @override
  _StateWidgetFlutterState createState() => _StateWidgetFlutterState();
}

class _StateWidgetFlutterState extends State<StateWidgetFlutter> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, children: [ ///Changed of overFlow
        Container(
          height: 200,
          width: 200,
          color: Colors.blue,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
        ),
        Positioned(
          bottom: -25,
          right: 10,
          child: Container(
            height: 50,
            width:50,
            color: Colors.pink,
          ),
        )
      ],

    );
  }
}


