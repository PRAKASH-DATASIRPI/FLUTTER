import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layouts'),
        ),
        body: Container(
          color: Colors.yellowAccent,
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: LayoutBuilder(
            builder: (BuildContext ctx, BoxConstraints constraints) =>
                Container(
              color: Colors.redAccent,
              alignment: Alignment.centerLeft,
              height: constraints.maxHeight * 0.9,
              width: constraints.maxWidth * 0.5,
              child: const Text(
                'LayoutBuilder Widget',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
