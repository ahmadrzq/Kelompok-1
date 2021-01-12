import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  String nama;
  String password;

  HomeScreen({Key key, @required this.nama, @required this.password})
      : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List job = [
    "Cari Kerja",
    "Buka Lowongan",
    "Artikel",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: Drawer(
        child: ListView(
          // Important: set padding to zero on listview
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
        title: Text('Halaman Utama'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.blue[400],
                Colors.blue,
              ],
            ),
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            splashRadius: 20.0,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
        child: ListView(
            children: job.map((kerja) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text(kerja),
            ),
          );
        }).toList()),
      ),
    );
  }
}
