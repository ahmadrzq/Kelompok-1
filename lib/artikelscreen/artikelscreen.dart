import 'package:flutter/material.dart';

class ArtikelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: indexScreen(),
    );
  }
}

class indexScreen extends StatefulWidget {
  @override
  _indexScreenState createState() => _indexScreenState();
}

class _indexScreenState extends State<indexScreen> {
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
                color: Color(0xff006494),
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
                  // height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.blue,
                  ),
                  child: FittedBox(
                    child: Image.asset('images/lfc.jpg'),
                    fit: BoxFit.fill,
                  )
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(),
                  child: Container(
                    width: 300,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text(
                        'Artikel Tentang Pekerjaan',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              //membuat 2 tulisan(artikel dan semua) ==============================================================
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Artikel',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Semua',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
                          onPressed: () {},
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
                          onPressed: () {},
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
                          onPressed: () {},
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
