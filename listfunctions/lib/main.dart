import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Playing XI'),
        ),
        body: ListView.builder(
          
          itemCount: names.length,
          itemBuilder: (context, index) {
            return ListTile(
              title:Text('${names[index]}',style:TextStyle(fontSize:42),),
            );
          },
        ),
      ),
    );
  }
}

// Example list.
List<String> names = ["1.Rohit","2.jaiswal","3.Kolhi","4.Sky","5.Tilak","6.Rinku","7.washi","8.bhuvi","9.Kuldeep","10.siraj","11 bumrah"]; 