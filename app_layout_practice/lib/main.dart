import 'package:app_layout_practice/pages/home_page.dart';
import 'package:app_layout_practice/pages/login_page.dart';
import 'package:app_layout_practice/pages/practice/widget_factory.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'LoginKingApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: WidgetFactory(),
      routes: routes,
    );
  }

}