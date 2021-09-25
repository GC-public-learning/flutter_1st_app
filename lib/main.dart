import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],

      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hello world !'),
          ElevatedButton(
            onPressed:(){},
            style : ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
            child: Text('click me'),

          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

