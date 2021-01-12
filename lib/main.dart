import 'package:flutter/material.dart';
import 'package:mobile_solo/artikelscreen/artikeldetailscreen.dart';
import 'package:mobile_solo/artikelscreen/artikelscreen.dart';
import 'package:mobile_solo/index.dart';
import 'package:mobile_solo/profile.dart';
import 'package:mobile_solo/login.dart';
import 'package:mobile_solo/signup.dart';

void main() => runApp(
      MaterialApp(
        title: 'Solo APP',
        theme: ThemeData(fontFamily: 'Proxima Nova'),
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          '/': (context) => HomeScreen(),
          '/profile': (context) => ProfilePage(),
          '/login': (context) => Loginscreen(),
          '/signup': (context) => SignUpScreen(),
          '/artikel': (context) => ArtikelScreen(),
          '/artikeldetail': (context) => ArtikelDetailScreen(),
        },
      ),
    ); // Material App
