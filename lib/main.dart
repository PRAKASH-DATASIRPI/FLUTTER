import 'package:flutter/material.dart';
import 'newpage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: Text('Card Demo'), backgroundColor: Colors.blue, 
          
          ),
     body: MyCardWidget(),
    ),
  );
  }
}
