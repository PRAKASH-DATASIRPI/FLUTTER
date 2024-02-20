import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Code'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
    );
  }

  void printCurrentValues() {
    print('Current text: ${myController.text}');
    print('Current selection: ${myController.selection}');
  }

  void updateValues() {
    myController.text = 'New text value';
    myController.selection = TextSelection.fromPosition(
      TextPosition(offset: myController.text.length),
    );
  }
}
