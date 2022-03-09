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
      home: Scaffold(
          appBar: AppBar(title: Text("TextView"),),
          body: TextViewFlutter()),
    );
  }
}

class TextViewFlutter extends StatefulWidget {
  const TextViewFlutter({Key? key}) : super(key: key);

  @override
  _TextViewFlutterState createState() => _TextViewFlutterState();
}

class _TextViewFlutterState extends State<TextViewFlutter> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      elevation: 3,
      shadowColor: Colors.amber,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: Colors.red, width: 3)),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 200,
          width: 200,
          child: Column(
            children: [

              ///HERE TEXT ELEMENTS
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  child: const Text(
                    "This is a sample text",
                    textAlign: TextAlign.center, ///text alignment
                    textScaleFactor: 2.0,  ///for increase the text size 2 times
                    overflow: TextOverflow.ellipsis, /// for something...
                    maxLines: 3, ///max line
                    style: TextStyle( ///text style
                        color: Colors.white,
                        fontSize: 11 , /// for ScaleFactor it will  be 22
                        //  fontStyle: FontStyle.italic,
                        //   fontWeight: FontWeight.bold, /// FontWeight.w500,
                        letterSpacing: 2.0,
                        wordSpacing: 10,
                        fontFamily: "NunitoSans"
                    ),
                  ),
                ),
              ),
              Text.rich(
                TextSpan(
                  text: "Hi",
                  children: [
                    TextSpan(
                      text: "This is new text",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18
                      )
                    ),
                    TextSpan(
                        text: "This is another text",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 30
                        )
                    )
                  ]

                )
              )
            ],
          ),




        ),
      ),
    );
  }
}

