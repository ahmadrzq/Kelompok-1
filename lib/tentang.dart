import 'package:flutter/material.dart';

class tentangKami extends StatefulWidget {
  @override
  _tentangKamiState createState() => _tentangKamiState();
}

class _tentangKamiState extends State<tentangKami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tentang Kami"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/workin.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Text(
                'Work in adalah sebuah aplikasi yang membantu pengguna dalam mencari kerja atau membuka pekerjaan',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));
  }
}