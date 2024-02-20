import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('TextField with onChanged Example'),
      ),
      body: MyTextFieldWidget(),
    ),
  ));
}

class MyTextFieldWidget extends StatefulWidget {
  @override
  _MyTextFieldWidgetState createState() => _MyTextFieldWidgetState();
}

class _MyTextFieldWidgetState extends State<MyTextFieldWidget> {
  String _inputText = 'enter name';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        onChanged: (value) {
          setState(() {
            _inputText = value; // Update the _inputText whenever the user types
          });
        },
        decoration: InputDecoration(
          hintText: 'Type...',
          labelText: 'Enter Name',
        ),
      ),
    );
  }
}
