import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('AlertBox'),
        backgroundColor: Colors.red,
      ),
      body: const MyAlert(),
    ));
  }
}

class MyAlert extends StatelessWidget {
  const MyAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.all(15.0),
      child: ElevatedButton(
        child: const Text('show Alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Widget okButton = TextButton(
  //   child:const  Text('OK'),
  //   onPressed: () {
  //     
  //   },
  // );

  // AlertDialog alert = AlertDialog(
  //   title: const Text("Title"),
  //   content:const Text("error Content"),
  //   actions: [
  //     TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('OK')),
  //     TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('cancel'))
  //   ],
  // );

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
    title: const Text("Title"),
    content:const Text("error Content"),
    actions: [
      TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('OK')),
      TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('cancel'))
    ],
  );
    },
  );
}
