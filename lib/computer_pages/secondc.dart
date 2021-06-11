
import 'package:drawer_navigation/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class SecondSemCE extends StatelessWidget {
  static const String id = 'second-sem-bce';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(child: Text("C.E Second Semester"),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.id);
            }
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, HomeScreen.id),
          icon: Icon(Icons.arrow_back, color: Colors.white,),
        ),
      ),
      body: Container(
        child:
          Image.asset('images/3rdcom/3rd1.png'),
      ),
    );
  }
}