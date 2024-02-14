import 'package:flutter/material.dart';
class MyCardWidget extends StatelessWidget {  
  MyCardWidget({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Center(  
      child: Container(  
        // width: 300,  
        // height: 200,  
         padding: new EdgeInsets.all(10.0),  
        child: Card(  
          shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(15.0),  
          ),  
          color: Colors.black26,  
          elevation: 10,  
          child: Column(  
            mainAxisSize: MainAxisSize.min,  
            children: <Widget>[  
              const ListTile(  
                leading: Icon(Icons.album, size: 60),  
                title: Text(  
                  'Arjith singh',  
                  style: TextStyle(fontSize: 25.0)  
                ),  
                subtitle: Text(  
                  'Best of Arjith',  
                  style: TextStyle(fontSize: 20.0)  
                ),  
              ),  
              
              ButtonBar(  
                children: <Widget>[  
                  ElevatedButton(  
                    child: const Text('Play'),  
                    onPressed: () {},  
                  ),  
                  ElevatedButton(  
                    child: const Text('Pause'),  
                    onPressed: () {},  
                  ),  
                ],  
              ),  
            ],  
          ),  
        ),  
      )  
    );  
  }  
}  