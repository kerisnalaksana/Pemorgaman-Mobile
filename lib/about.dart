import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(children: <Widget>[
            Text(
                'PET SHOP BARUKA adalah tempat untuk jualbeli hewan peliharaan dan makanannya'),
          ]),
        ),
      ),
    );
  }
}
