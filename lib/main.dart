import 'dart:html';

import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}
