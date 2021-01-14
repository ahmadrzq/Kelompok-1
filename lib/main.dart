import 'package:flutter/material.dart';
import 'package:mobile_solo/artikelscreen/artikeldetailscreen.dart';
import 'package:mobile_solo/artikelscreen/artikelscreen.dart';
import 'package:mobile_solo/googlemaps/googlemaps.dart';
import 'package:mobile_solo/httprequest/users.dart';
import 'package:mobile_solo/index.dart';
import 'package:mobile_solo/profile.dart';
import 'package:mobile_solo/login.dart';
import 'package:mobile_solo/signup.dart';
import 'package:mobile_solo/cariKerja.dart';
import 'package:mobile_solo/tentang.dart';
import 'package:mobile_solo/detailKerja/1.dart';
import 'package:mobile_solo/lowonganKerja/insert.dart';
import 'package:mobile_solo/lowonganKerja/index.dart';

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
          '/cariKerja': (context) => cariKerjaScreen(),
          '/detail1': (context) => detail1Screen(),
          '/maps': (context) => googlemaps(),
          '/mainlowongankerja': (context) => mainLowonganKerja(),
          '/insertlowongankerja': (context) => lowonganKerja(),
          '/tentangkami': (context) => tentangKami(),
          '/httprequest': (context) => httpRequest(),
        },
      ),
    ); // Material App
