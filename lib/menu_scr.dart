import 'package:flutter/material.dart';
import './ui/home.dart';
import './produk.dart';
import './drawer.dart';
import './about.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Beranda"),
            ],
          ),
          actions: <Widget>[
            new GestureDetector(
              child: new IconButton(
                  icon: Icon(Icons.announcement_outlined),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => AboutPage()));
                  }),
            ),
          ],
        ),
        drawer: MainDrawer(),
        body: Container(
          color: Colors.blue[300],
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: Image(
                    image: AssetImage("assets/Banner.jpg"),
                  ),
                ),
                Image(
                  image: AssetImage("assets/dashboard.jpg"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          width: 90,
                          height: 90,
                          //color: Colors.red,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(Icons.shopping_bag_outlined),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("Product"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) {
                              return ProdukList();
                            }),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 90,
                          height: 90,
                          //color: Colors.red,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(Icons.format_list_bulleted),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("Penjualan"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) {
                              return Home();
                            }),
                          );
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          width: 90,
                          height: 90,
                          //color: Colors.red,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    new Icon(Icons.help_outline_outlined),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text("About"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) {
                              return AboutPage();
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
