import 'package:flutter/material.dart';
import 'package:hmmmmm/room.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

Widget buildVsAiBtn() {
  return Container(
    padding: EdgeInsets.only(top:20),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('vs ai Pressed'),
      padding: EdgeInsets.all(25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Color.fromRGBO(158, 60, 255, 1),
      child: Text('VS AI',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
    ),
  );
}

Widget buildHighScrBtn() {
  return Container(
    padding: EdgeInsets.only(top:30),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Highscore Pressed'),
      padding: EdgeInsets.all(25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Color.fromRGBO(158, 60, 255, 1),
      child: Text('HIGHSCORE',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
    ),
  );
}

Widget buildQuitBtn() {
  return Container(
    padding: EdgeInsets.only(top:30),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Keluar'),
      padding: EdgeInsets.all(25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Color.fromRGBO(158, 60, 255, 1),
      child: Text('QUIT GAME',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
    ),
  );
}

class _HomeScreenState extends State<HomeScreen> {
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
                Image.asset('assets/logo2.png'),
                SizedBox(height: 60),
                buildVsAiBtn(),
                Container(
                  padding: EdgeInsets.only(top:30),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 5,
                    onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (content) => RoomScreen())
                            );
                        },
                    padding: EdgeInsets.all(25),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color.fromRGBO(158, 60, 255, 1),
                    child: Text('MULTIPLAYER',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                // SizedBox(height:20),
                buildHighScrBtn(),
                // SizedBox(height:20),
                buildQuitBtn()
              ],
            )),
      ),
    );
  }
}
