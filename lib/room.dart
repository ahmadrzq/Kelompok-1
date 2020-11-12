import 'package:flutter/material.dart';

import 'ingame.dart';

class RoomScreen extends StatefulWidget {
  @override
  _RoomScreenState createState() => _RoomScreenState();
}

Widget buildRoom2Btn() {
  return Container(
    padding: EdgeInsets.only(top: 30),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Room2 Pressed'),
      padding: EdgeInsets.all(25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Color.fromRGBO(158, 60, 255, 1),
      child: Text('ROOM 2',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
    ),
  );
}

Widget buildRoom3Btn() {
  return Container(
    padding: EdgeInsets.only(top: 30),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Room3 Pressed'),
      padding: EdgeInsets.all(25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Color.fromRGBO(158, 60, 255, 1),
      child: Text('ROOM 3',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
    ),
  );
}

class _RoomScreenState extends State<RoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromRGBO(12, 26, 70, 1)),
        child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 120,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'SELECT ROOM',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 5,
                    onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (content) => InGameScreen())
                            );
                        },
                    padding: EdgeInsets.all(25),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromRGBO(158, 60, 255, 1),
                    child: Text('ROOM 1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                buildRoom2Btn(),
                buildRoom3Btn(),
              ],
            )),
      ),
    );
  }
}
