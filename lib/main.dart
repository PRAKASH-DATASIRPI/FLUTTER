import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> imageurls = [
    'https://cdn.britannica.com/63/211663-050-A674D74C/Jonny-Bairstow-batting-semifinal-match-England-Australia-2019.jpg',
     'https://cdn.britannica.com/63/211663-050-A674D74C/Jonny-Bairstow-batting-semifinal-match-England-Australia-2019.jpg',
      'https://cdn.britannica.com/63/211663-050-A674D74C/Jonny-Bairstow-batting-semifinal-match-England-Australia-2019.jpg',
       'https://cdn.britannica.com/63/211663-050-A674D74C/Jonny-Bairstow-batting-semifinal-match-England-Australia-2019.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List Images'),
        ),
        body: ListView.separated(
          itemCount: imageurls.length,
          separatorBuilder: (_, __) => Divider( height: 20),
            itemBuilder: (_, index) {
              return ListTile(
                trailing: ClipOval(
                  child: Image.network(imageurls[index], height: 50,width: 50, fit: BoxFit.cover),
                ),
                title: Text('my image $index'),
                subtitle: Text('listview with images'),
                onTap: () {
                  print('pressed');
                },
              );
            },
            ),
      ),
    );
  }
}
