import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('List1'),
            subtitle: Text('List normal'),
          ),
          Divider(),
          ListTile(
            tileColor: Colors.blueGrey,
            title: Text(
              'List2',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'List dengan warna',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Divider(),
          ListTile(
            title: Text('List3'),
            trailing: Icon(Icons.email),
            subtitle: Text('List dengan icon disamping kanan / sesudah title'),
          ),
          Divider(),
          ListTile(
            isThreeLine: true,
            title: Text('List4'),
            subtitle: Text('List yang memiliki 3 line'),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red),
            title: Text('List5'),
            subtitle:
                Text('List yang memiliki icon disamping kiri / sebelum title'),
          ),
          Divider(),
          ListTile(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) => Container(
                  color: Colors.blue[700],
                  height: 300.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'You got 1 email from MONKE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ],
                  ),
                ),
              );
            },
            title: Text('List6'),
            subtitle: Text('List yang bisa diteken'),
          ),
          Divider(),
          ListTile(
            onLongPress: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) => Container(
                    color: Colors.red,
                    height: 200.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Now you've done it",
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              );
            },
            title: Text('List7'),
            subtitle: Text('List yang harus ditekan tahan baru bisa aktif'),
          )
        ],
      ),
      bottomNavigationBar: _appBarbawah(context),
    );
  }
}

BottomAppBar _appBarbawah(BuildContext context) {
  return BottomAppBar(
    color: Theme.of(context).primaryColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => Container(
              alignment: Alignment.center,
              height: 200.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Yang muncul adalah modal yang bertuliskan "Yang muncul adalah modal yang bertuliskan"',
                  style: TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
