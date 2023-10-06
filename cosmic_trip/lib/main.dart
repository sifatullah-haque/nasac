// Importing the HomePage widget from the home_page.dart file
import 'package:cosmic_trip/pages/Trip_details/trip_details.dart';
import 'package:cosmic_trip/pages/home_page/home_page.dart';

// Importing the material package from flutter
import 'package:flutter/material.dart';

// The main function of the app
void main() => runApp(const MyApp());

// The MyApp widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // The build method for the MyApp widget
  @override
  Widget build(BuildContext context) {
    // Returns a MaterialApp widget with a title and a HomePage widget as its body
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: TripDetails(),
      ),
    );
  }
}
