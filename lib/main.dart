import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deligram Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(body: DeligramTestApp()),
    );
  }
}

class DeligramTestApp extends StatelessWidget {
  const DeligramTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

    )
  }
}



