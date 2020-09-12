import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlueBook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
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
  int a = 20;

  int b = 30;

  bool c = true;

  String name = 'maxwell';

  void _checkWithCondition() {
    (a > b) ? print('A is bigger') : print('B is also big');
  }

  void _checkBolean() {
    c ? print('C is true') : print('C is false');
  }

  void _checkStringName() {
    (name == 'maxwell') ? print('Correct Name') : print('Wrong Name');
  }

  var _colors = Colors.deepPurpleAccent;

  var _icons = Icons.menu;

  var _icon = Icons.more_vert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tenary Expression'),
        backgroundColor: _colors,
        leading: IconButton(
          icon: Icon(_icons),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(_icon),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: RaisedButton(
                onPressed: _checkWithCondition,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Text('For tenary Expression'),
                textColor: Colors.white,
                color: Colors.black,
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: RaisedButton(
              onPressed: _checkBolean,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Text('For boolean Expression'),
              textColor: Colors.white,
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: RaisedButton(
              onPressed: _checkStringName,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Text('For string Expression'),
              textColor: Colors.white,
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
          ),
        ],
      ),
    );
  }
}
