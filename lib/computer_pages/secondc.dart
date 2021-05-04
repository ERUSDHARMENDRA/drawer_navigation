
import 'package:drawer_navigation/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondSemCE extends StatelessWidget {
  static const String id = 'second-sem-bce';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(child: Text("C.E Second Semester"),
            onTap:(){
      Navigator.pushNamed(context, HomeScreen.id);
      }
      ),
        automaticallyImplyLeading: true,
          leading: IconButton(
          onPressed:() => Navigator.pushNamed(context, HomeScreen.id),
            icon:Icon(Icons.arrow_back, color: Colors.white,),
          ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/logo.png',),
            SizedBox(height: 1,),
            Image.asset('images/logo.png',),
            Image.asset('images/logo.png',),
            Image.asset('images/logo.png',),
            Image.asset('images/logo.png',),
          ],
        ),
      ),
    );
  }
}
