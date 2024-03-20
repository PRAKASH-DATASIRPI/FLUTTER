import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

Future<List> getQuotes() async {
  var baseurl = "http://localhost:8080/api/v1/quotes";
  var response = await http.get(Uri.parse(baseurl));
  final data = jsonDecode(response.body);
  if (response.statusCode == 200) {
    return data;
  } else {
    print("Error getting data");
  }
  return [];
}

Future addQuote(Map<String, dynamic> body) async {
  var baseurl = "http://localhost:8080/api/v1/quotes";
  var encodedBody = jsonEncode(body);
  var headers = {'Content-Type': 'application/json'};
  var response = await http.post(Uri.parse(baseurl), headers: headers, body: encodedBody);
  if (response.statusCode >= 200) {
    print("Post Method :  ${response.body}");
  } else {
    print("Error getting data");
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List _quotes = [];

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Songs List"),
          actions: [
            IconButton(
              onPressed: () async {
                await getQuotes();
              },
              icon: Icon(Icons.refresh),
            ),
            IconButton(
              onPressed: () async {
                var testBody = {"quoteText": "Yaman", "author": "Mohmaad"};
                await addQuote(testBody);
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<List>(
            future: getQuotes(),
            builder: (BuildContext ctx, AsyncSnapshot<List> snapshot) {
              return snapshot.hasData
                  ? ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, index) => Card(
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        color: index.isEven ? Colors.blue.shade100 : Colors.blue.shade200,
                        child: ListTile(
                          onTap: () {
                            _showQuoteDialog(context, snapshot.data![index]);
                          },
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text(
                              snapshot.data![index]['id'].toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          title: Text(
                            snapshot.data![index]['quoteText'].toString(),
                            style: GoogleFonts.aclonica(fontSize: 20),
                          ),
                          subtitle: Text(
                            snapshot.data![index]['author'].toString(),
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
        ),
      ),
    );
  }

  void init() async {
    _quotes = await getQuotes();
  }

  void _showQuoteDialog(BuildContext context, Map quote) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.blue.shade200,
          title: Text("Songs Details"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("song: ${quote['quoteText']}"),
              Text("singer: ${quote['author']}"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"),
            ),
          ],
        );
      },
    );
  }
}
