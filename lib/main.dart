import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String value = "Prakash";

  void clickme() {
    setState(() {
      value = "rocky";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
           children: <Widget>[
            Text(value),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: clickme,
            )
          ],
        ),
      
    );
  }
}
