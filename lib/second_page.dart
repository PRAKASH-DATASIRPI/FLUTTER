import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String? data;
  const SecondPage({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
          child: Column(children: [
        const Text('This is Second page'),
        Text(data ?? 'no data received'),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('go back'),
        )
      ])),
    );
  }
}
