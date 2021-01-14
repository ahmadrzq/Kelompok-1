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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue[400],
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3))
                      ],
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(40))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Selamat Datang di Work.In',
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Proxima Nova'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(10),
                onTap: () {
                  Navigator.pushNamed(context, '/cariKerja');
                },
                child: Container(
                  width: 330,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset('images/job.png'),
                      ),
                      title: Text(
                        'Cari Pekerjaan',
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'Disini Anda bisa mencari pekerjaan sesuai dengan bidang Anda'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(10),
                onTap: () {
                  Navigator.pushNamed(context, '/mainlowongankerja');
                },
                child: Container(
                  width: 330,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset('images/job.png'),
                      ),
                      title: Text(
                        'Buat Lowongan',
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle:
                          Text('Anda juga dapat membuat lowongan pekerjaan'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(10),
                onTap: () {
                  Navigator.pushNamed(context, '/artikel');
                },
                child: Container(
                  width: 330,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image.asset('images/job.png'),
                      ),
                      title: Text(
                        'Artikel Pekerjaan',
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'Anda bisa mendaptkan info terkini tentang pekerjaan'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blue[400],
                  child: Text(
                    'Pengguna Aplikasi Kami',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/httprequest');
                  },
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
