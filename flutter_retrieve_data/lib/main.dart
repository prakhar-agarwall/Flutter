import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Input Text',
      home: MyCustomForm(),
    );
  }

}

class MyCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm>{

  final myController = TextEditingController();


  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Retrieve Text Input"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){
          return showDialog(context: context,
          builder: (context){
            return AlertDialog(
              content: Text(myController.text),
            );
          });
    },
    tooltip: 'Show me the text',
    child: Icon(Icons.text_fields),
    ),
    );
  }
}
