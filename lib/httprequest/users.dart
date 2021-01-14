import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class httpRequest extends StatelessWidget {
  final String apiUrl = "https://reqres.in/api/users?per_page=15";
  Future<List<dynamic>> _fetchDataUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('User Kami'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: FutureBuilder<List<dynamic>>(
                  future: _fetchDataUsers(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.all(10),
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage(snapshot.data[index]['avatar']),
                            ),
                            title: Text(snapshot.data[index]['first_name'] +
                                " " +
                                snapshot.data[index]['last_name']),
                            subtitle: Text(snapshot.data[index]['email']),
                          );
                        },
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
