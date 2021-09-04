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
      body: Center(
        //child: Image.asset('assets/donuts_choco.png'),
        child : Image.network('https://img3.freepng.fr/dy/e639e8454906104a3635b16b0d00e407/L0KzQYm3U8MyN6N2iZH0aYP2gLBuTfRwdqZ5i59sb3bpdba0gf5lNZV0jdlxboX3g37tkv90fJpzf59yY3nxd370lfZncV54iORybnvvdcS0VfFjbpc4SNQDZHS4RIS1UcgzOGY1Sqg6NUK1RYOCUMM2PWk2RuJ3Zx==/kisspng-donuts-coffee-and-doughnuts-frosting-icing-muffi-sprinkles-5abff30b8dd543.182050261522529035581.png')
        /*Text(
          'Hello ninjas',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'IndieFlower'
          ),
        ),*/
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

