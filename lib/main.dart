import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlueBook',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final _icon = Icons.menu;
  final _icon2 = Icons.more_vert;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlueBook'),
        backgroundColor: Colors.deepPurpleAccent,
        leading: IconButton(
          icon: (Icon(
            _icon,
          )),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(_icon2),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: 200.0,
            height: 200.0,
            child: Text('I am Abel Shedrack'),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 50.0),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('List Item 1'),
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(height: 10.0),
                FlatButton(
                  child: Text('List Item 2'),
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(height: 10.0),
                FlatButton(
                  child: Text('List Item 3'),
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
