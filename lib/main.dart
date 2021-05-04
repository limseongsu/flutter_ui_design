import 'package:flutter/material.dart';
import 'package:flutter_ui_design/data/fake_data.dart';
import 'package:flutter_ui_design/models/profile.dart';
import 'package:flutter_ui_design/profile_top_section.dart';

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
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('별로에요'),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('괜찮아요'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
