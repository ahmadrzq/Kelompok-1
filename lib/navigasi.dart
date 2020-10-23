import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: halamanPertama(),
    ));

class halamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Membuat Button
        child: ElevatedButton(
          // Fungsi ketika button ditekan
          onPressed: () {
            Navigator.push(
              context,
              // Mengubah context halamanPertama menjadi halamanKedua
              MaterialPageRoute(builder: (context) => halamanKedua()),
            );
          },
          // Membuat anak berupa Widget Text
          child: Text('Tekan untuk ke halaman kedua'),
        ),
      ),
    );
  }
}

class halamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Balik lagi mamank'),
        ),
      ),
    );
  }
}
