import 'package:flutter/material.dart';
import 'package:mobile_solo/customwidget/customdrawer.dart';

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
      // Custom drawer
      drawer: CustomDrawer(),
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
