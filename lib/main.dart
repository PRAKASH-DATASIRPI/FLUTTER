import "package:flutter/material.dart";

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("NAVIGATION"),
          backgroundColor: Colors.blue,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: 0,
            fixedColor: Colors.red,
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "search",
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "new",
                icon: Icon(Icons.precision_manufacturing),
              ),
            ],
            onTap: (int index) {
              print(index);
            }),
      ),
    );
  }
}
