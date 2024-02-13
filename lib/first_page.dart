import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First page")),
      body: Center(
          child: Column(children: [
        const Text('This is first page'),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/second');
          },
          child: const Text('go to second'),
        )
      ])),
    );
  }
}
