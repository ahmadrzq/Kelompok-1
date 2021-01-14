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
              'images/job.png',
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
              'Kesuksesan adalah impian bagi tiap orang di dunia. Namun, pernahkah Anda bertanya-tanya bagaimana cara menjadi orang sukses? Untuk mencapai kesuksesan tersebut memang dibutuhkan kerja keras dan semangat pantang menyerah. Akan tetapi cara tersebut tidak cukup. Kamu pun perlu mempelajari cara menjadi orang sukses yang lain agar lebih mudah dalam mencapai apa yang dicita-citakan.',
              style:
                  TextStyle(fontSize: 17, color: Colors.black.withOpacity(0.7)),
            )),
          ),
        ],
      ),
    );
  }
}
