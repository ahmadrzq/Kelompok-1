import 'package:flutter/material.dart';

// Mengeksekusi void main dengan membuka MaterialApp
void main() => runApp(MaterialApp(
      // Menghapus banner debug yang ada di kanan atas layar
      debugShowCheckedModeBanner: false,

      // Mengeset Font Custom menjadi Font default
      theme: ThemeData(fontFamily: 'Montserrat'),

      // Membuka widget home dengan memanggil class Home
      home: Home(),
    ));

// Membuat class Home dan mengekstend dari StatelessWidget untuk bisa hot reload
class Home extends StatelessWidget {
  @override
  // Membuat BuildContext yang digunakan untuk melacak suatu Widget yang ada pada Widget tree (referensi onlen)
  Widget build(BuildContext context) {
    // Me-return Class Scaffold yang berisi banyak Widget ??
    return Scaffold(
      // Membuat bar aplikasi dengan memanggil property AppBar
      appBar: AppBar(
        // Memberi Teks pada AppBar
        title: Text(
          'Kelompok 1 SDGs 1',
          // Memberi styling AppBar
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      // Membuat body, Column digunakan untuk membuat daftar kebawah
      body: Column(
        children: <Widget>[
          // Membuat Container yang nanti diisi cells
          Container(
            // Memberi padding dengan sisi kiri 5 dan atas 10)
            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            // Membuat Row yang digunakan untuk membuat daftar arah horizontal
            child: Row(
              // Membuat jarak antar cells
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // Membuat anak :v
              children: <Widget>[
                // Ini nama anaknya :v
                Text('Khamim Thohari Wakhid'),
                Text('182410102017'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Chokito Fararicki Sisi Haskar'),
                Text('182410102042'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Mylian Gedhe'),
                Text('182410102048'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Ahmad Rizqi Isnain'),
                Text('182410102053'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
