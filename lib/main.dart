import 'package:coba5/page2.dart';
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
      body: Center(
        // Membuat Button
        child: RaisedButton(
          // Fungsi ketika button ditekan
          onPressed: () {
            Navigator.push(
              context,
              // Mengubah context halamanPertama menjadi halamanKedua
              MaterialPageRoute(builder: (context) => page2()),
            );
          },
          // Membuat anak berupa Widget Text
          child: Text('Tekan untuk ke halaman kedua'),
        ),
      ),
    );
  }
}
