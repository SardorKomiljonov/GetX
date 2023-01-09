// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Apis extends StatefulWidget {
  const Apis({super.key});

  @override
  State<Apis> createState() => _ApisState();
}

class _ApisState extends State<Apis> {
  Map data = {};
  List userData = [];

  Future getData() async {
    http.Response response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    data = json.decode(response.body);
    setState(() {
      userData = data['data'];
    });
    debugPrint(userData.toString());
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World!!!'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: userData == null ? 0 : userData.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    minRadius: 35,
                    backgroundImage: NetworkImage(userData[index]['avatar']),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          "${userData[index]["first_name"]} ${userData[index]["last_name"]}"),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                          '${userData[index]["email"]}')
                    ],
                  ),
                ],
              ),
            ));
          }),
    );
  }
}
