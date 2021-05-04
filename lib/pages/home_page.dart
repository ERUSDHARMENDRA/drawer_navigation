import 'package:drawer_navigation/computer_pages/secondc.dart';
import 'package:drawer_navigation/notes/secondsembce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//HomePage Stateful Widget
class HomeScreen extends StatefulWidget {

  static const String id = ' home-screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PU Syllabus"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0:0.0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(
              tooltip: 'Settings',
            enableFeedback: true,
            icon: Icon(CupertinoIcons.gear_alt_fill),
            onPressed: (){

            },
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("KODE MAFIA"),
              accountEmail: Text("Kodemafia008@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple:Colors.white,
                child: Text("K"),
              ),
              otherAccountsPictures:<Widget> [
                CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple:Colors.white,
                  child: Text("M"),
                ),
              ],
            ),

            ListTile(
              title: Text("Syllabus"),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: ()  {
                Navigator.of(context).pop();
                Navigator.pushReplacementNamed(context, SecondSemCE.id);
              },
            ),

            ListTile(
              title: Text("Notes"),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: ()  {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, BCENotesScreen.id);
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
      body: Row(
        children: [

          ],
      )
    );
  }
}
//EndOf HomePage Stateful Widget

