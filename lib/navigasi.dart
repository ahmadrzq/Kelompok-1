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
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => halamanKedua()),
            );
          },
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
