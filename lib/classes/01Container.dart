import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      height: 600,
      width: 600,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(5),
      child: const TestTable(),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.yellowAccent,
          width: 2
        )
      ),
      //transform: Matrix4.rotationZ(.2),

    );
  }
}

class TestTable extends StatelessWidget {
  const TestTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Table name",
                  style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              )
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                color: Colors.yellow,
                child: Text(
                    "Table name",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    )
                ),

              ),

            ],

          )
        ],

      ),


    );
  }
}


