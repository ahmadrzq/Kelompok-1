import 'package:flutter/material.dart';
import 'package:mobile_solo/customwidget/customdrawer.dart';

class cariKerjaScreen extends StatefulWidget {
  @override
  _cariKerjaScreenState createState() => _cariKerjaScreenState();
}

class _cariKerjaScreenState extends State<cariKerjaScreen> {
  AnimationController _controller;
  bool Searching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: !Searching
              ? Text("Cari Kerja")
              : TextField(
                  decoration: InputDecoration(
                  hintText: "Cari disini",
                )),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    this.Searching = !this.Searching;
                  });
                })
          ],
        ),
        body: Container(
            // margin: EdgeInsets.all(10.0), //CODE BARU UNTUK MENGATUR MARGIN
            child: Column(children: <Widget>[
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
                      'Daftar Lowongan Pekerjaan',
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
          SizedBox(
            height: 20,
          ),
          Center(
            child: Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  Navigator.pushNamed(context, '/detail1');
                },
                child: Container(
                  width: 350,
                  child: ListTile(
                    leading: Image.asset('images/lfc2.jpg'),
                    title: Text('Tester Game',
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue)),
                    subtitle: Text('PT. LFC Indonesia',
                        style:
                            new TextStyle(fontSize: 13, color: Colors.black)),
                    trailing: Text("Surabaya"),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: 350,
                  child: ListTile(
                    leading: Image.asset('images/laravel-forum.png'),
                    title: Text('Software Programmer',
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue)),
                    subtitle: Text('PT. Laravel Forum Corporation',
                        style:
                            new TextStyle(fontSize: 13, color: Colors.black)),
                    trailing: Text("jakarta"),
                  ),
                ),
              ),
            ),
          ),
        ])));
  }
}
