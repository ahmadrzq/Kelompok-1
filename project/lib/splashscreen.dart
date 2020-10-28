import 'package:flutter/material.dart';
import 'dart:async';
import 'package:myukaqa/home.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  
  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart()async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Icon(
              Icons.account_balance_wallet,
              size: 100.0,
              color: Colors.white,
            ),
            
            SizedBox(height: 24.0,),
            
            Text("Work.In",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 27.0,
            ),
            ),
          ],
        ),
      ),
    );
  }
}