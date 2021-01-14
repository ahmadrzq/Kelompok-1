import 'package:flutter/material.dart';
import 'package:mobile_solo/customwidget/customdrawer.dart';

class ArtikelScreen extends StatefulWidget {
  @override
  _ArtikelScreenState createState() => _ArtikelScreenState();
}

class _ArtikelScreenState extends State<ArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: CustomDrawer(),
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
                    height: 70,
                    child: Center(
                      child: Text(
                        'Dapatkan Atikel Pekerjaan terkini',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
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
