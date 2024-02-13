import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _nameState();
}

class _nameState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("drawer"),
          backgroundColor: Colors.blue,
        ),
        drawer: const Drawer(
          elevation: 1.0,
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
            
                accountName: Text('prakash'),
                accountEmail: Text('prakashmuruganm@2001@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text('PS'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: Text('PM'),
                  )
                ],
              ),
              ListTile(
                title: Text('Inbox'),
                leading: Icon(Icons.inbox),
              ),
              Divider(
                height: 1.2,
              ),
               ListTile(
                title: Text('ALl inboxes'),
                leading: Icon(Icons.mail),
              ),
              Divider(
                height: 1.2,
              ),
               ListTile(
                title: Text('social'),
                leading: Icon(Icons.people),
              ),
              Divider(
                height: 1.2,
              ),
              
              
              
            ],
            
          ),
        ),
      ),
    );
  }
}
