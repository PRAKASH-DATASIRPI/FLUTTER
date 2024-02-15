import 'package:flutter/material.dart';

class Gridnext extends StatefulWidget {
  const Gridnext({Key? key}) : super(key: key);

  @override
  State<Gridnext> createState() => _GridnextState();
}

class _GridnextState extends State<Gridnext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text('Grid'),
      ),
      body: GridView.count(
  crossAxisCount: 2,
  children: List.generate(10, (index) {
    return Container(
      color: Colors.blue,
      margin: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          'Item $index',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  },
),
      ),
    );
  }
}
