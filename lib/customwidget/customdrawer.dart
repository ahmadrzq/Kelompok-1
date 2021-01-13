import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: set padding to zero on listview
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(15),
              child: Image(
                image: AssetImage('images/workin.png'),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Cari Kerja',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              if (ModalRoute.of(context).settings.name == '/cariKerja') {
                Navigator.pop(context);
              } else {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/cariKerja');
              }
            },
          ),
          ListTile(
            title: Text(
              'Buat Lowongan Kerja',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              if (ModalRoute.of(context).settings.name ==
                  '/mainlowongankerja') {
                Navigator.pop(context);
              } else {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/mainlowongankerja');
              }
            },
          ),
          ListTile(
            title: Text(
              'Artikel Pekerjaan',
              style: TextStyle(fontSize: 20.0),
            ),
            onTap: () {
              if (ModalRoute.of(context).settings.name == '/artikel') {
                Navigator.pop(context);
              } else {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/artikel');
              }
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
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/tentangkami');
            },
          ),
        ],
      ),
    );
    ;
  }
}
