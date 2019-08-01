import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    title: 'Navigation',
    routes: <String, WidgetBuilder>{
      '/MyHomePage': (BuildContext context) => MyHomePage(),
      '/SecondPage': (BuildContext context) => SecondPage(),
    },
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUSIC'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.headset,
            size: 50,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/SecondPage');
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SPEAKER'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.speaker,
            size: 50,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/MyHomePage');
          },
        ),
      ),
    );
  }
}
