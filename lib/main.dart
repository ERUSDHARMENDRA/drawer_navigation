import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


//HomePage Stateful Widget
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0:0.0,
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Erus008"),
                accountEmail: Text("Dharmendramehta622@gmail.com")
            ),

            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_upward_rounded),
            ),

            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.arrow_downward_rounded),
            ),

            Divider(),

            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
            ),

          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
//EndOf HomePage Stateful Widget

