import 'package:flutter/material.dart';
import 'package:myukaqa/splashscreen.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.lightBlue[300],
  ),
  home: Splashscreen(),
));

class MyApp extends StatelessWidget {
  var name = [
    "KHAMIM THOHARI WAKHID 182410102017",
    "CHOKITO FARARICKI S. H. 182410102042",
    "MYLIAN GEDHE 182410102048",
    "AHMAD RIZQI ISNAIN 182410102053",
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelompok 1"),
      ),

      body: ListView.separated(
        separatorBuilder: (context, index){
          return Divider(
            color: Colors.black,
          );
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            
            child: Text(name[index]),
          );
          
        },
        itemCount: name.length,
      ),
    );
  }
}