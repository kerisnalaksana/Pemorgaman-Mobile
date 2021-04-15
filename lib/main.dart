import 'package:flutter/material.dart';
import 'menu_scr.dart';

void main() {
  runApp(new MaterialApp(
    title: "PetShop",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: MyHomePage(),
      ),
    );
  }
}
