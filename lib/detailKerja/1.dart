import 'package:flutter/material.dart';

class detail1Screen extends StatefulWidget {
  @override
  _detail1ScreenState createState() => _detail1ScreenState();
}

class _detail1ScreenState extends State<detail1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Detail Kerja"),
        ),
        body: Container(
            margin: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ), //CODE BARU UNTUK MENGATUR MARGIN
                child: Column(children: <Widget>[
                  new Card(
                    child: new Container(
                      width: 350,
                      padding: new EdgeInsets.all(15.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Image.asset(
                            'images/lfc2.jpg',
                            height: 50,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          new Text('Tester Game ',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.blue)),
                          SizedBox(
                            height: 5,
                          ),
                          new Text('PT LFC Indonesia',
                              style: new TextStyle(
                                  fontSize: 15, color: Colors.black)),
                          SizedBox(
                            height: 10,
                          ),
                          new Text('Surabaya, Jawa Timur',
                              style: new TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                          new Text('Ditayangkan pada 12 januari 2021',
                              style: new TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                  new Card(
                    child: new Container(
                      width: 350,
                      padding: new EdgeInsets.all(15.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          new Text('Detail Pekerjaan ',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black)),
                          SizedBox(
                            height: 5,
                          ),
                          new Text(
                              'Kerjaannya sebenarnya bukan "main game”, tapi "mencari kerusakan" dalam game baru yang sedang dibuat. Game tester bertanggung jawab mendokumentasikan semua kesalahan/ kekurangan dalam game yang sedang dibuat, sekecil apa pun kesalahan itu. Termasuk bugs, kesalahan koding, hingga glitch.',
                              style: new TextStyle(
                                  fontSize: 10, color: Colors.black))
                        ],
                      ),
                    ),
                  ),
                  new Card(
                    child: new Container(
                      width: 350,
                      padding: new EdgeInsets.all(15.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          new Text('Detail Tambahan',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black)),
                          SizedBox(
                            height: 5,
                          ),
                          new Text('* Gaji = Rp. 4.500.000/Bulan',
                              style: new TextStyle(
                                  fontSize: 10, color: Colors.black)),
                          new Text('* Alamat = Jl jalan di jalan',
                              style: new TextStyle(
                                  fontSize: 10, color: Colors.black)),
                          new Text('* Kualifikasi = S1,S2,S3',
                              style: new TextStyle(
                                  fontSize: 10, color: Colors.black))
                        ],
                      ),
                    ),
                  ),
                  new Card(
                    child: new Container(
                      width: 350,
                      padding: new EdgeInsets.all(15.0),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          new Text('Detail Perusahaan ',
                              style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black)),
                          SizedBox(
                            height: 5,
                          ),
                          new Text(
                              'Liverpool Football Club /ˈlɪvərpuːl/ (dikenal pula sebagai Liverpool atau The Reds) adalah sebuah klub sepak bola asal Inggris yang berbasis di Kota Liverpool. Saat ini Liverpool adalah peserta Liga Utama Inggris. Liverpool juga merupakan juara dari Liga Utama Inggris musim 2019–2020.'
                              'Liverpool telah memenangkan 6 trofi Liga Champions UEFA (dulu Piala Champions) dan merupakan klub dengan pemegang gelar juara Liga Champions UEFA terbanyak di Inggris dan ketiga di Eropa setelah Real Madrid dan AC Milan[3]. Selain itu Liverpool juga pemegang 3 gelar juara Liga Eropa UEFA[4] dan 4 gelar Piala Super UEFA[5].',
                              style: new TextStyle(
                                  fontSize: 10, color: Colors.black))
                        ],
                      ),
                    ),
                  ),
                ]))));
  }
}
