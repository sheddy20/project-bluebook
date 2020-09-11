import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlueBook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlueBook'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        elevation: 1.5,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'you tap the button $_counter times',
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              color: Colors.teal,
            ),
          ),
          CircleAvatar(
            radius: 40.5,
            backgroundImage: AssetImage(''),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
        backgroundColor: Colors.purpleAccent,
        tooltip: 'Tap',
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.5),
        ),
      ),
    );
  }
}
