import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Render'),
        ),
        body:  SingleChildScrollView(
          // to avoid overflow render we want to code for scrollable type of widgets
          child:  Column(
            
                
            children: [
              
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
              Text('this is my first tile'),
                
           
              
            ],
          ),
        ),
      ),
    );
  }
}
