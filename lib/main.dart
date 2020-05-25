import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: View()
      )
    );
  }
}

class View extends StatefulWidget {
  @override
  ViewState createState() => ViewState();
}

class ViewState extends State<View> {

   Color colorCode = Colors.lightBlue;

   final Random random = new Random();

   generateRandomColor() {
     Color color = Color.fromARGB(
         random.nextInt(256),
         random.nextInt(256),
         random.nextInt(256),
         random.nextInt(256)
     );
     setState(() {
       colorCode = color;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCode,
      appBar: AppBar(
        title: Text('Generate random background color'),
      ),
      body: GestureDetector(
        onTap: () => generateRandomColor()
      )
    );
  }
}
