import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Welcome To the Janggal"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/lfc2.jpg'),
                  radius: 50.0,
                ),
              ),
              Divider(
                height: 65.0,
                color: Colors.amberAccent[700],
              ),
              Text(
                'NAMA',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 4.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Kopites',
                style: TextStyle(
                  color: Colors.grey[50],
                  letterSpacing: 3.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                'CURRENT LEVEL',
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 4.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '10',
                style: TextStyle(
                  color: Colors.grey[50],
                  letterSpacing: 3.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Kopites@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[50],
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
