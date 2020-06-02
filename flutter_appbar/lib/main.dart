import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter AppBar'),
        ),
        body: Center(
          child: Text("Added AppBar!!",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 40.0,
            fontStyle: FontStyle.italic
          ),),
        ),
      )
    );

        }
}
