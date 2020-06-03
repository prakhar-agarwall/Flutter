import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: NavigationDrawer()
    );
  }
}

class NavigationDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: ExactAssetImage("assets/images/bot.jpg"),
                ),
                accountName: Text("Prakhar Agarwal"),
                accountEmail: Text("abcd@gmail.com"),
              ),
              ListTile(
                leading: Icon(Icons.access_time),
                title: Text("Item 1"),
                onTap: (){
                  Navigator.pop(context);
                },

              ),
              ListTile(
                leading: Icon(Icons.accessible),
                title: Text("Item 2"),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text("Item 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
