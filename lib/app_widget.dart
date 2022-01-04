import 'package:flutter/material.dart';
import 'package:linkedln/modules/Splash/Splash_page.dart';
import 'package:linkedln/modules/login_page/login_page.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, primarySwatch: Colors.grey),
      initialRoute: "/login",
      routes: {
        "/Splash": (context)=> Splash(),
        "/login":(context)=>LoginPage(),
      }
    );
  }
}