import 'package:flutter/material.dart';
import 'package:radio/pages/Gallery_page.dart';
import 'package:radio/pages/contacts_page.dart';
import 'package:radio/pages/main_page.dart';
import 'package:radio/pages/pudcast_list_page.dart';
import 'package:radio/pages/youtubeChannel_page.dart';

void main() {
  runApp(MyApp());
  //hello word,,,,
  // hello too
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Radio",
      theme: ThemeData(
          backgroundColor: Color(0xff111111),

          scaffoldBackgroundColor: Color(0xff111111) ,
          primaryColor: Colors.white,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
              titleTextStyle: TextStyle(color: Colors.white),
              toolbarTextStyle: TextStyle(color: Colors.white),
              centerTitle: true,
              elevation: 0)),
      home: MainPage (),
    );
  }
}
