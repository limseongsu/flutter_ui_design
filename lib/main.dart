import 'package:flutter/material.dart';
import 'package:flutter_ui_design/data/fake_data.dart';
import 'package:flutter_ui_design/models/profile.dart';
import 'package:flutter_ui_design/ui_profile/profile_body_section.dart';
import 'package:flutter_ui_design/ui_profile/profile_head_section.dart';
import 'package:flutter_ui_design/ui_profile/profile_top_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Profile profile = fakeprofile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 67,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          '프로필',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        titleSpacing: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.add_alert),
            onPressed: null,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ProfileTopSection(profile),
                ProfileHeadSection(profile),
                Divider(
                  color: Colors.black,
                ),
                ProfileBodySection(profile),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF34beb3)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Color(0xFF34beb3)))),
                    ),
                    onPressed: () {},
                    child: Text(
                      '별로에요',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF34beb3)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(color: Color(0xFF34beb3)))),
                    ),
                    onPressed: () {},
                    child: Text(
                      '괜찮아요',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
