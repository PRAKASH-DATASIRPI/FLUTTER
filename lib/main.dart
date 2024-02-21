import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class UppercaseTransformer extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map((text) => text.toUpperCase());
  }
}

class _MyAppState extends State<MyApp> {
  StreamController<String> streamController = StreamController();
  TextEditingController textEditingController = TextEditingController();
  StreamTransformer<String, String> _uppercaseTransformer =
      UppercaseTransformer();

  @override
  void initState() {
    super.initState();
    _uppercaseTransformer = UppercaseTransformer();
  }

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Stream Controller"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<String>(
                stream:
                    streamController.stream.transform(_uppercaseTransformer),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    String output = snapshot.data.toString();
                    return Text(output, style: TextStyle(fontSize: 24));
                  } else {
                    return Text("No data", style: TextStyle(fontSize: 24));
                  }
                }),
            SizedBox(height: 20.0),
            SizedBox(
                width: 200,
                child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                        hintText: "Enter text",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))))),
            SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  String text = textEditingController.text;
                  streamController.add(text);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                ),
                child: Text("Ok"))
          ],
        )),
      ),
    );
  }
}
