import 'package:flutter/material.dart';

class Gridbuild extends StatefulWidget {
  const Gridbuild({Key? key}) : super(key: key);

  @override
  State<Gridbuild> createState() => _GridbuildState();
}

class _GridbuildState extends State<Gridbuild> {
  final List<String> items = ['prakash', 'murugan', 'developer','prakash', 'murugan', 'developer','prakash', 'murugan', 'developer',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text('Grid'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 8.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0), // padding around the grid
        itemCount: items.length, // total number of items
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue, // color of grid items
            child: Center(
              child: Text(
                items[index],
                style: const TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
