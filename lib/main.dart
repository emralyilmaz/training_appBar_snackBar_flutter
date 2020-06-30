import 'package:flutter/material.dart';

final SnackBar snackBar = const SnackBar(content: Text("Snacbar Alanı"));
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Temel(),
    );
  }
}

class Temel extends StatefulWidget {
  @override
  _TemelState createState() => _TemelState();
}

class _TemelState extends State<Temel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Scaffold'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: "SnackBar Göster",
              onPressed: () {
                scaffoldKey.currentState.showSnackBar(snackBar);
              }),
          IconButton(
            icon: Icon(Icons.add_location),
            onPressed: () {
              print("Lokasyon Getir.");
            },
          )
        ],
      ),
      body: Center(
        child: Text('body'),
      ),
    );
  }
}
