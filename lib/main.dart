import 'package:drawer_navigation/computer_pages/secondc.dart';
import 'package:drawer_navigation/notes/secondsembce.dart';
import 'package:drawer_navigation/pages/home_page.dart';
import 'package:drawer_navigation/screens/login_screen.dart';
import 'package:drawer_navigation/screens/splash_screen.dart';
import 'package:drawer_navigation/screens/welcome_screen.dart';
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
      initialRoute: SplashScreen.id,

       routes: {
         SplashScreen.id: (context) => SplashScreen(),
         HomeScreen.id:(context)=> HomeScreen(),
         WelcomeScreen.id:(context)=>WelcomeScreen(),
         LoginScreen.id:(context)=>LoginScreen(),
         SecondSemCE.id:(context)=>SecondSemCE(),
         BCENotesScreen.id:(context)=>BCENotesScreen(),
       });
  }
}


