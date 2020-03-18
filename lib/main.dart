import 'package:demo/homepage.dart';
import 'package:demo/videos.dart';
import 'package:flutter/material.dart';

import 'contactscreen.dart';
import 'donate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App',
      home: HomePage(),
      routes: {
        'contact': (context) => ContactScreen(),
        'video': (context) => VideosPage(),
        'donate': (context) => Donation(),
      },
    );
  }
}
