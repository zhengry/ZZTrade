import 'package:flutter/material.dart';
import 'package:zz_trip/tabs/tab_naviagation.dart' as prefix0;
import './tabs/home.dart';
import "./tabs/tab_naviagation.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final _routes = {
    "/":(context)=>prefix0.TabBarView(),

  };




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: _routes,
      initialRoute: "/",
      
    );
  }
}

