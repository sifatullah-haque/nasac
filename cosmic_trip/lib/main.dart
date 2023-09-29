import 'package:cosmic_trip/pages/details_page/details_page.dart';
import 'package:cosmic_trip/pages/details_page/saturn.dart';
import 'package:cosmic_trip/pages/details_page/venus.dart';
import 'package:cosmic_trip/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
