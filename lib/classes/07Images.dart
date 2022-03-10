import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

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
String filePath = '';

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
          appBar: AppBar(title: Text("IMAGES"),),
          body: ImageViewFlutter()),
    );
  }
}

class ImageViewFlutter extends StatefulWidget {
  const ImageViewFlutter({Key? key}) : super(key: key);

  @override
  _ImageViewFlutterState createState() => _ImageViewFlutterState();
}

class _ImageViewFlutterState extends State<ImageViewFlutter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 1000,
        width: 600,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,width: 100,
              child: Image.network("https://avatars.githubusercontent.com/u/36919896?v=4"),
            ),

            Container(
              height: 100,width: 100,
              color: Colors.green,
              child: Image.asset('assets/images/uu.png'),
            ),

            LoadFileImage() ,///Custom widget
            ///

            loadMemoryImage()



          ],
        ),
      ),
    );
  }


  ///Is a widget
  Widget LoadFileImage() {
    checkPermission();
    return Center(
      child: Image.file(
        File(filePath),
        width: 100,
        height: 100,
        semanticLabel: 'System Image',
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Future<void> checkPermission() async {  /// permission_handler: ^6.0.0 Library
    if (await Permission.storage.request().isGranted) {
      setState(() {
        // Please set your device's image path
        filePath = '/sdcard/Download/abc.jpeg';
      });
    }else{
      await Permission.storage.request();
    }
  }

  // Load image from memory
  Widget loadMemoryImage() {

    String BASE64_STRING = 'SOME STRING IMAGE';
        Uint8List bytes = base64Decode(BASE64_STRING);

    return Center(
      child: Image.memory(
        bytes,
        width: 300,
        height: 300,
        semanticLabel: 'Memory Image',
        fit: BoxFit.fitHeight,
      ),
    );
  }
}




