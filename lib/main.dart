import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // this is also a constructor call
}

/*
  » From the Dart language’s point of view, Text("Hello world!")
  constructs an object.

  In Dart terminology, you call it an instance of the Text class.
  » From the Flutter point of view, Text("Hello world!") creates a widget.
  It’s an instance of the Text class and therefore (. . . guilt by association . . .) an
  instance of the StatelessWidget class and an instance of the Widget class.
 */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Material design is a set of specifications that describe the way app looks
      home: Scaffold(
        // Home is the starting screen of an app
        appBar: AppBar(
          title: const Text(
            "This is called Scaffold",
            textScaleFactor: 1.2,
          ),
          elevation:
              2.0, // 100 is 100 dp ie density independent pixels - casts quite a large shadow with 100 - default is 4
          //brightness: Brightness.light, // this is old practice no longer used
        ),

        body:Center(// Center Widget in class Scaffold

        child: Column( // in addition to column flutter also has a row and listview widget
            mainAxisAlignment: MainAxisAlignment.center,  // to align in center vertically
            // parameter         enum             value of enum
            children: const [
              Text(
                // Now text is child of Center Widget
                "I am Batman!", textScaleFactor: 4.0,
                // textScaleFactor is another parameter given to constructor for size of text
                style: TextStyle(fontSize: 10.0),
              ),
              Text("WAYNE ENTERPRISES")
            ]),
        ),


        // Piece of Material consists of a child - here child is text
        drawer: const Drawer(
          child: Center(
            child: Text(
              "This is a Drawer",
              textScaleFactor: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}

// commas separate parameters while semi colon is end of line

/*
  » In Flutter, almost every object is, in one way or another, an instance of
  the Widget class.

  Informally, a widget is a component on a user’s screen. Flutter takes this idea
  to another level, with each part of the user interface (the Text instance, the
  Material instance, and even the MaterialApp instance) being a widget in its
  own right.
 */
