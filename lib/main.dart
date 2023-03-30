import 'package:flutter/material.dart';
import 'package:hours_8/login_page.dart';
import 'package:hours_8/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hours_8/list.dart';
import 'package:hours_8/pages/home_page.dart';

import 'gridview_list.dart';
import 'list2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      // home: MyAppClass(),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home" : (context) => HomePage(),
        "/login" : (context) => LoginPage(),
      } ,
    );
  }
}
