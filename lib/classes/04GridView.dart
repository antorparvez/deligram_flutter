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
      home: const Scaffold(
          body: GridViewBuilder()),
    );
  }
}

///GridView with Builders
class GridViewBuilder extends StatefulWidget {
  const GridViewBuilder({Key? key}) : super(key: key);

  @override
  _GridViewBuilderState createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            ),
        itemBuilder: (context, item) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
          );
        });
  }
}

///Simple Grid View
class GridLayout extends StatefulWidget {
  const GridLayout({Key? key}) : super(key: key);

  @override
  _GridLayoutState createState() => _GridLayoutState();
}

class _GridLayoutState extends State<GridLayout> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        Container(
          alignment: Alignment.center,
          child: Text("hii"),
          color: Colors.yellow,
        ),
        Container(
          alignment: Alignment.center,
          child: Text("hii"),
          color: Colors.yellow,
        ),
        Container(
          alignment: Alignment.center,
          child: Text("hii"),
          color: Colors.yellow,
        ),
        Container(
          alignment: Alignment.center,
          child: Text("hii"),
          color: Colors.yellow,
        ),
        Container(
          alignment: Alignment.center,
          child: Text("hii"),
          color: Colors.yellow,
        ),
        Container(
          alignment: Alignment.center,
          child: Text("hii"),
          color: Colors.yellow,
        ),
      ],
    );
  }
}
