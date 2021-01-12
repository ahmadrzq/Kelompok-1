import 'package:flutter/material.dart';
class ArtikelScreen extends StatefulWidget {
  @override
  _ArtikelScreenState createState() => _ArtikelScreenState();
}

class _ArtikelScreenState extends State<ArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text('Gambar'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'WORK.IN',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Cari Kerja',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Buat Lowongan Kerja',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Artikel Pekerjaan',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/artikel');
              },
            ),
            Divider(
              color: Colors.grey,
              indent: 10.0,
              endIndent: 10.0,
            ),
            ListTile(
              title: Text(
                'Tentang Kami',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Artikel'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              // bikin 2 container saling tumpuk ==============================================================
              children: <Widget>[
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Center(
                      child: Text(
                        'Dapatkan Atikel Pekerjaan terkini',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold
                        ) ,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              //card 1 dengan padding ==============================================================
              padding: const EdgeInsets.all(7),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.work),
                      title: const Text('5 Cara agar sukses'),
                      subtitle: Text('ini dia caranya'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text(
                        'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                          textColor: const Color.fromRGBO(2, 120, 174, 1),
                          onPressed: () {
                            Navigator.pushNamed(context, '/artikeldetail');
                          },
                          child: const Text('Baca Selengkapnya'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              //card 2 dengan padding ==============================================================
              padding: const EdgeInsets.all(7),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.work),
                      title: const Text('5 Cara agar sukses'),
                      subtitle: Text('ini dia caranya'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text(
                        'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                          textColor: const Color.fromRGBO(2, 120, 174, 1),
                          onPressed: () {
                            Navigator.pushNamed(context, '/artikeldetail');
                          },
                          child: const Text('Baca Selengkapnya'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              //card 3 dengan padding ==============================================================
              padding: const EdgeInsets.all(7),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.work),
                      title: const Text('5 Cara agar sukses'),
                      subtitle: Text('ini dia caranya'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Text(
                        'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                          textColor: const Color.fromRGBO(2, 120, 174, 1),
                          onPressed: () {
                            Navigator.pushNamed(context, '/artikeldetail');
                          },
                          child: const Text('Baca Selengkapnya'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
