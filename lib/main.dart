import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.search),
            Icon(Icons.more_vert)
          ],
          title: const Text('Header and Title Example',
              style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blue[500],
        ),
        body: SingleChildScrollView(
          child: Padding(
            
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Header Section
          
                Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.blue[300],
                  child: const Text(
                    'Header',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
          
                // Title Section
          
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    // color: Colors.blue[100],
                    child: Image.asset('mypic.jpg',height: 300,width: 400)
                  ),
                ),
          
                // Description Section
          
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Thats wonderful! Having a sense of humor can brighten up many situations and make interactions more enjoyable. Humor is a great way to connect with others and bring joy to everyday life. Keep spreading positivity and laughter! If you have any jokes or funny stories you d like to share, feel free to do so!',
                    style: TextStyle(
                      fontSize: 42.0,
                    ),
                  ),
                ),
          
                // Add Info Section
          
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'This is the information section where you can add more details.',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 32.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
