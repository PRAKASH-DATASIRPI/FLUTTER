import "package:flutter/material.dart";
import "first_page.dart";
import 'second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Routes',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: SecondPage(),
        // initialRoute: '/',
        // routes:{
        //   '/':(context) => const FirstPage(),
        //   '/second':(context) => const SecondPage()
        // },

        onGenerateRoute: (RouteSettings routeSettings) {
          switch (routeSettings.name) {
            case '/':
              return MaterialPageRoute(builder: (context) => const FirstPage());

            case '/second':
              return MaterialPageRoute(
                  builder: (context) => const SecondPage());
          }
        });
  }
}
