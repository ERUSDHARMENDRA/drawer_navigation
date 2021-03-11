import 'package:drawer_navigation/newPage.dart';
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
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.white :null),
      home: HomePage(),
      // routes: <String, WidgetBuilder>{
      // "/a" :(BuildContext context) => NewPage("NewPage"),}
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
                accountEmail: Text("Dharmendramehta622@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple:Colors.white,
                child: Text("E"),
              ),
              otherAccountsPictures:<Widget> [
                CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple:Colors.white,
                  child: Text("K"),
                ),
              ],
            ),

            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_upward_rounded),
              onTap: ()  {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        NewPage("Page One")));
              },
            ),

            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.arrow_downward_rounded),
              onTap: ()  {
                Navigator.of(context).pop();
                 Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                   NewPage("Page Two")));
                },
            ),

            Divider(),

            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
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

