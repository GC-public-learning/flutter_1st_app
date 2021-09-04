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
2) personalize text widget
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
3) download and use a personalized font
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
    <br/>&emsp; replace the uncommented block and save
    ~~~
    fonts:
       - family: IndieFlower
         fonts:
             - asset: fonts/IndieFlower-Regular.ttf
    ~~~
    <br/>&emsp; click on "get dependencies link on "main.dart"
    <br/>&emsp; add new propriety on the last personalized text widget
    ~~~
    fontFamily: 'IndieFlower'
    ~~~

# chap 7.  Stateless Widgets & Hot Reload

1) create a statelless Widget named "Home" (stless tab) and copy all the scaffold after the return instruction of the new widget
~~~
Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],

      ),
      body: Center(
        child: Text(
          'Hello ninjas',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'IndieFlower'
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
~~~
2) call the "Home" widget on the in the place of the cut scaffold :
~~~
home: Home(),
~~~
### now just saving is enough to directly apply changes on the preview !

# chap 8.  Images & Assets

1) use a NetworkImage in the place of the text widget in from the body
~~~
child: Image(
    image: NetworkImage('https://img3.freepng.fr/dy/e639e8454906104a3635b16b0d00e407/L0KzQYm3U8MyN6N2iZH0aYP2gLBuTfRwdqZ5i59sb3bpdba0gf5lNZV0jdlxboX3g37tkv90fJpzf59yY3nxd370lfZncV54iORybnvvdcS0VfFjbpc4SNQDZHS4RIS1UcgzOGY1Sqg6NUK1RYOCUMM2PWk2RuJ3Zx==/kisspng-donuts-coffee-and-doughnuts-frosting-icing-muffi-sprinkles-5abff30b8dd543.182050261522529035581.png')
),
~~~
2) use an Asset Image in place of the Network image
    <br/>&emsp; - create a new folder "assets" and paste the image you want to use inside
    <br/>&emsp; - replace this block code on pubspec.yaml
    ~~~
    # assets:
      #   - images/a_dot_burr.jpeg
      #   - images/a_dot_ham.jpeg
    ~~~
    by
    ~~~
assets:
    - assets/
    ~~~
    <br/>&emsp; - press "get dependencies" on main.dart
    <br/>&emsp; - use the image from assets in the child of the body
~~~
child: Image(
      image: AssetImage('assets/donuts_choco.png'),
    ),
~~~
3) use this more simple instruction in the last one :
~~~
child: Image.asset('assets/donuts_choco.png'),
~~~
or this for a network image:
~~~
child: Image.network('https://img3.freepng.fr/dy/e639e8454906104a3635b16b0d00e407/L0KzQYm3U8MyN6N2iZH0aYP2gLBuTfRwdqZ5i59sb3bpdba0gf5lNZV0jdlxboX3g37tkv90fJpzf59yY3nxd370lfZncV54iORybnvvdcS0VfFjbpc4SNQDZHS4RIS1UcgzOGY1Sqg6NUK1RYOCUMM2PWk2RuJ3Zx==/kisspng-donuts-coffee-and-doughnuts-frosting-icing-muffi-sprinkles-5abff30b8dd543.182050261522529035581.png'),
~~~

# chap 9.