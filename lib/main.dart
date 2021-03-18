import 'package:flutter/material.dart';

import './detail_produk.dart';
import './drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
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
          IconButton(
              icon: Icon(Icons.announcement_outlined),
              onPressed: () {
                print(
                    'Pet Shop adalah sebuah aplikasi untuk jual beli hewan yang bisa dipelihara');
              }),
        ],
      ),
      drawer: MainDrawer(),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                          name: "Anjing Kintamani",
                          description:
                              "Anjing Kintamani asal Bali umur 2 bulan",
                          price: 300000,
                          image: "kintamani.jpeg",
                          star: 5,
                        )),
              );
            },
            child: ProductBox(
              nama: "Anjing Kintamani",
              deskripsi: "Anjing Kintamani asal Bali umur 2 bulan",
              harga: 300000,
              image: "kintamani.jpeg",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "Kucing Anggora",
                          description: "Kucing Anggora asli umur 4bulan",
                          price: 2500000,
                          image: "anggora.png",
                          star: 4,
                        )),
              );
            },
            child: ProductBox(
              nama: "Kucing Anggora",
              deskripsi: "Kucing Anggora asli umur 4bulan",
              harga: 2500000,
              image: "anggora.png",
              star: 4,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "Kura-kura",
                          description: "Bayi kura-kura",
                          price: 200000,
                          image: "tukik.jpeg",
                          star: 4,
                        )),
              );
            },
            child: ProductBox(
              nama: "Kura-kura",
              deskripsi: "Bayi kura-kura",
              harga: 200000,
              image: "tukik.jpeg",
              star: 4,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "Anjing Golden",
                          description: "Umur 4bulan",
                          price: 500000,
                          image: "golden.jpeg",
                          star: 5,
                        )),
              );
            },
            child: ProductBox(
              nama: "Anjing Golden",
              deskripsi: "Umur 4bulan",
              harga: 500000,
              image: "golden.jpeg",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "cupang",
                          description: "cupang keren",
                          price: 100000,
                          image: "cupang.jpeg",
                          star: 5,
                        )),
              );
            },
            child: ProductBox(
              nama: "cupang",
              deskripsi: "cupang keren",
              harga: 500000,
              image: "cupang.jpeg",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                    builder: (BuildContext content) => DetailProduk(
                          name: "Gecko Leopard",
                          description: "BAru NEtas",
                          price: 500000,
                          image: "gecko.jpeg",
                          star: 4,
                        )),
              );
            },
            child: ProductBox(
              nama: "Gecko Leopard",
              deskripsi: "BAru NEtas",
              harga: 500000,
              image: "gecko.jpeg",
              star: 4,
            ),
          )
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.image, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String image;
  final int star;
  final children = <Widget>[];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.yellow,
      ));
    }

    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            "assets/appimages/" + image,
            width: 150,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Text(
                    this.nama, //untuk nama
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(this.deskripsi), //deskripsi produk
                  Text(
                    "Harga :" + this.harga.toString(), // harga produk
                    style: TextStyle(color: Colors.orange),
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: children,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
