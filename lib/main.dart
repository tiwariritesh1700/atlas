import 'package:atlas/screens/country_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AtlasApp());
}

class AtlasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlas',
      debugShowCheckedModeBanner: false,
      home: CountryScreen(),
    );
  }
}
