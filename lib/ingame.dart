import 'package:flutter/material.dart';

class InGameScreen extends StatefulWidget {
  @override
  _InGameScreenState createState() => _InGameScreenState();
}

class _InGameScreenState extends State<InGameScreen> {
  bool oTurn = true; //pemain pertama o
  List<String> display0 = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(12, 26, 70, 1),
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 40)),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/player1.png',
                          width: 120,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('VS',
                          style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/player2.png',
                          width: 120,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _tapped(index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Color.fromRGBO(139, 30, 140, 1),
                      )),
                      child: Center(
                        child: Text(
                          display0[index],
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Text('SKOR = ',
                  style: TextStyle(color: Colors.white, fontSize: 30)),
            ),
          ),
        ],
      ),
    );
  }

  void _tapped(int index) {
    setState(() {
      if (oTurn && display0[index] == '') {
        display0[index] = 'o';
      } else if (!oTurn && display0[index] == '') {
        display0[index] = 'x';
      }

      oTurn = !oTurn;
      _checkWinner();
    });
  }

  void _checkWinner() {
    if (display0[0] == display0[1] &&
        display0[0] == display0[2] &&
        display0[0] != '') {
      _winDialog(display0[0]);
    }

    if (display0[3] == display0[4] &&
        display0[3] == display0[5] &&
        display0[3] != '') {
      _winDialog(display0[3]);
    }

    if (display0[6] == display0[7] &&
        display0[6] == display0[8] &&
        display0[6] != '') {
      _winDialog(display0[6]);
    }

    if (display0[0] == display0[3] &&
        display0[0] == display0[6] &&
        display0[0] != '') {
      _winDialog(display0[0]);
    }

    if (display0[1] == display0[4] &&
        display0[1] == display0[7] &&
        display0[1] != '') {
      _winDialog(display0[1]);
    }

    if (display0[2] == display0[5] &&
        display0[2] == display0[8] &&
        display0[2] != '') {
      _winDialog(display0[2]);
    }

    if (display0[0] == display0[4] &&
        display0[0] == display0[8] &&
        display0[0] != '') {
      _winDialog(display0[0]);
    }

    if (display0[6] == display0[4] &&
        display0[6] == display0[2] &&
        display0[6] != '') {
      _winDialog(display0[6]);
    }
  }

  void _winDialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(winner + '  Menang'),
            actions: <Widget>[
              FlatButton(
                child: Text('Play Again'),
                onPressed: () {
                  _clearboard();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  void _clearboard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        display0[i] = '';
      }
    });
  }
}
