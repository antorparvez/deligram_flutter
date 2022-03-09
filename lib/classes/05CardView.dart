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
      home: const Scaffold(body: CardViewFlutter()),
    );
  }
}

///CARD VIEW
///
class CardViewFlutter extends StatefulWidget {
  const CardViewFlutter({Key? key}) : super(key: key);

  @override
  _CardViewFlutterState createState() => _CardViewFlutterState();
}

class _CardViewFlutterState extends State<CardViewFlutter> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      elevation: 3,
      shadowColor: Colors.amber,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.red, width: 3)),
      child: Container(
        height: 200,
        width: 200,
      ),
    );
  }
}
