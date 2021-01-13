import 'package:flutter/material.dart';

class mainLowonganKerja extends StatefulWidget {
  @override
  _mainLowonganKerjaState createState() => _mainLowonganKerjaState();
}

class _mainLowonganKerjaState extends State<mainLowonganKerja> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Lowongan Kerja"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/job.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Text(
                'Apakah anda ingin membuka lowongan pekerjaan untuk orang-orang?',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              child: RaisedButton(
              color: Colors.blueAccent[100],
              onPressed: () {
                Navigator.pushNamed(context, '/insertlowongankerja');
              },
              child: Text('Klik Disini'),
            )),
          ],
        ));
  }
}
