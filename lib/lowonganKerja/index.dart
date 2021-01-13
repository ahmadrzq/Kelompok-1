import 'package:flutter/material.dart';

class lowonganKerja extends StatefulWidget {
  @override
  _lowonganKerjaState createState() => _lowonganKerjaState();
}

class _lowonganKerjaState extends State<lowonganKerja> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Buat Lowongan Kerja"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Form(
              child: Column(
            //CHILDREN DARI COLUMN BERISI 4 BUAH OBJECT YANG AKAN DI-RENDER, YAKNI
            // TextInput UNTUK NAME, EMAIL, PASSWORD DAN TOMBOL DAFTAR
            children: [
              pekerjaanField(),
              namaField(),
              alamatField(),
              gajiField(),
              tambahButton(),
            ],
          )),
        ),
      ),
    );
  }
}

Widget pekerjaanField() {
  //MEMBUAT TEXT INPUT
  return TextFormField(
    decoration: InputDecoration(labelText: 'Pekerjaan'),
    //AKAN BERISI VALIDATION
  );
}

Widget namaField() {
  //MEMBUAT TEXT INPUT
  return TextFormField(
    decoration: InputDecoration(labelText: 'Nama Perusaahan'),
    //AKAN BERISI VALIDATION
  );
}

Widget alamatField() {
  //MEMBUAT TEXT INPUT
  return TextFormField(
    decoration: InputDecoration(labelText: 'Alamat'),
    //AKAN BERISI VALIDATION
  );
}

Widget gajiField() {
  //MEMBUAT TEXT INPUT
  return TextFormField(
    decoration: InputDecoration(labelText: 'Jumlah Gaji'),
    //AKAN BERISI VALIDATION
  );
}

Widget tambahButton() {
  //MEMBUAT TOMBOL
  return RaisedButton(
    color: Colors.blueAccent,
    onPressed: () {
      //PERINTAH YANG AKAN DIEKSEKUSI KETIKA TOMBOL DITEKAN
    },
    child: Text('Tambah'),
  );
}
