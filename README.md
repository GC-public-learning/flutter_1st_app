# flutter_1st_app

### Flutter Tutorial for Beginners

channel youtube of creator : https://www.youtube.com/channel/UCW5YeuERMmlnqo4oq8vwUpg

link playlist class : https://www.youtube.com/playlist?list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ

thanks to the youtuber "The Net Ninja" ^^

# chap 4. Creating a Flutter App in Android Studio
### the goal : using a MaterialApp class on the main() function to use some interesting functions in the future
1) clean the default flutter app by delete the "test/" folder
2) modify "main.dart" from "lib/"
<br/> here just a text is displayed on the home screen
~~~
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Text('Hey ninjas !'),

  ));
}
~~~
# chap 5. Scaffold & AppBar Widgets
### the goal : make a Scaffold with some layout widget inside
1) modify "main.dart" from "lib/"
~~~
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,

      ),
      body: Center(
        child: Text('Hello ninjas'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () {},
      ),
    ),
  ));
}
~~~
