import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text('Profile'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: <Color>[
                Color(0xff006494),
                Color(0xff13293d),
              ])),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75.0,
                backgroundImage: AssetImage('images/Logo.png'),
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.white,
            ),
            Text(
              'NAMA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 12.5,
            ),
            Text(
              'CHOKITO FARARICKI SISI HASKAR',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Text(
              'NIM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '182410102042',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 1.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.white,
              endIndent: 45.0,
              indent: 45.0,
            ),
            Center(
              child: RaisedButton(
                textColor: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('LOG OUT'),
                color: Color(0xff111111),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
