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
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count = _count + 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlueBook'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.queue_music),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'you tap the button too many times.',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Text(
            '$_count',
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurpleAccent,
        tooltip: 'Tap',
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.5),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text('Ejeh Shedrack Abel'),
              accountName: Text('Shedrack Nicholas'),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
              ),
            ),
            ListTile(
              title: Text('Account'),
              leading: Icon(Icons.account_box),
              onTap: () {},
              trailing: Icon(Icons.more_vert),
              subtitle: Text('Delete Account'),
            ),
          ],
        ),
      ),
    );
  }
}
