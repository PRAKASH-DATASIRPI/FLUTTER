import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SECTIONS'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    padding: EdgeInsets.all(20.0),
                    
                    child: Text('PRAKASH.M',textAlign: TextAlign.center,)),
                Container(child: Expanded(child: Image.asset('mypic.jpg'))),
                Container(child: Text('Thats wonderful! Having a sense of humor can brighten up many situations and make interactions more enjoyable. Humor is a great way to connect with others and bring joy to everyday life. Keep spreading positivity and laughter! If you have any jokes or funny stories you d like to share, feel free to do so!',style: TextStyle(fontSize: 20),)),
                Container(child: Text('Information is a collection of data that has been organized and processed in a meaningful way to convey knowledge or meaning to someone. It s the result of processing, manipulating, and organizing data in a way that adds context, relevance, and purpose. Information helps us understand the world around us, make decisions, solve problems, communicate effectively, and learn new things.'

)),
              ]),
        ),
      ),
    );
  }
}
