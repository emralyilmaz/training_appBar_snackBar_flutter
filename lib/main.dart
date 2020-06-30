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
        //child: Icon(
        //  Icons.favorite,
        //  color: Colors.red,
        //  size: 100,
        // child: FlatButton(
        //     onPressed: () {
        // print("Flat Button Tıklandı.");
        // },
        // child: Text("Tıkla"),
        // color: Colors.redAccent,
        // textColor: Colors.limeAccent,
        // splashColor: Colors.black12,

        // child: RaisedButton.icon(
        //  onPressed: () {
        //    print("Flat Button Tıklandı.");
        //  },
        //  icon: Icon(Icons.mail),
        //  label: Text("Mail Gönder"),
        //  color: Colors.amber,
        //  onLongPress: () {
        //    print("Uzun Tıklandı");
        //  },
        //),

        child: IconButton(
          icon: Icon(Icons.alarm),
          onPressed: () {
            print("Uzun Tıklandı");
          },
          iconSize: 100,
        ),
      ),
    );
  }
}
