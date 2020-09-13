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
          Image.asset(
            'Assets/Images/shedrack.jpg',
            width: 200.0,
          ),
        ],
      ),
    );
  }
}
