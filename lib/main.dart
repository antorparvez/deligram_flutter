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

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    for(int i=0; i<= 10 ; i++){
      list.add(i);
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
      home: const Scaffold(body: ListViewBuilder()),
    );
  }
}

///ROWS AND COLUMNS STATELESS WIDGET
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



///LIST WITH TILES STATEFUL WIDGET

class FlutterListTiles extends StatefulWidget {
  const FlutterListTiles({Key? key}) : super(key: key);

  @override
  _FlutterListTilesState createState() => _FlutterListTilesState();
}

class _FlutterListTilesState extends State<FlutterListTiles> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("sdfadfsadsf"),
          tileColor: Colors.green,
          trailing: Icon(
              Icons.arrow_back
          ),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow
            ),
          ),
        ),
        ListTile(
          title: Text("sdfadfsadsf"),
          tileColor: Colors.green,
          trailing: Icon(
              Icons.arrow_back
          ),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow
            ),
          ),
        ),
        ListTile(
          title: Text("sdfadfsadsf"),
          tileColor: Colors.green,
          trailing: Icon(
              Icons.arrow_back
          ),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow
            ),
          ),
        ),
        ListTile(
          title: Text("sdfadfsadsf"),
          tileColor: Colors.green,
          trailing: Icon(
              Icons.arrow_back
          ),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow
            ),
          ),
        ),
      ],
    );
  }
}

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

///LISTVIEW WITH BUILDER STATEFUL WIDGET
class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext cnx ,int index){
          return   ListTile(
            title: Text("List Item ${list[index]}"),
            tileColor: Colors.green,
            trailing: Icon(
                Icons.arrow_back
            ),
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow
              ),
            ),
          );
        },

    );
  }
}






