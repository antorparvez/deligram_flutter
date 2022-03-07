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
    return const FlutterColumnRow();
  }
}

class FlutterColumnRow extends StatelessWidget {
  const FlutterColumnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Text("data"),
            Text("data2")
          ],
        ),
        Row(
          children: const [
            Text("data"),
            Text("data2")
          ],
        ),
        Row(
          children: const [
            Text("data"),
            Text("data2")
          ],
        )
      ],
    );
  }
}




