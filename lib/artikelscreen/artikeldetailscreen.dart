import 'package:flutter/material.dart';

class ArtikelDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Detail Artikel'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Image.asset(
              'images/lfc.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(10),
            child: Container(
                child: Text(
              '5 Cara agar sukses',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
                child: Text(
              'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ',
              style:
                  TextStyle(fontSize: 17, color: Colors.black.withOpacity(0.7)),
            )),
          ),
        ],
      ),
    );
  }
}
