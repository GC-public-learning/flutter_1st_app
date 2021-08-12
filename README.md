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
### the goal : make a Scaffold with some layout widgets inside
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
# chap 6. Colours & Fonts
### the goal : customize some things
1) add background color on the appbar and button
~~~
backgroundColor: Colors.red[600],
~~~
3) personalize text widget
~~~
child: Text(
    'Hello ninjas',
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 2.0,
        color: Colors.grey[600],
      ),
~~~
4) download and use a personalized font
    <br/>&emsp; make a "fonts/" folder and paste the .ttf file
    <br/>&emsp; in pubspec.yaml uncomment that block :
    ~~~
    fonts:
       - family: Schyler
         fonts:
             - asset: fonts/Schyler-Regular.ttf
             - asset: fonts/Schyler-Italic.ttf
               style: italic
         - family: Trajan Pro
           fonts:
             - asset: fonts/TrajanPro.ttf
             - asset: fonts/TrajanPro_Bold.ttf
               weight: 700
    ~~~
    <br/>&emsp; replace the uncomment block and save
    ~~~
    fonts:
       - family: IndieFlower
         fonts:
             - asset: fonts/IndieFlower-Regular.ttf
    ~~~
    <br/>&emsp; click on "get dependencies link on "main.dart"
    <br/>&emsp; add new propriety on the last personalized text widget
    ~~~
    ~~~

