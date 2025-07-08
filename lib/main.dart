import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const GlucoUSApp());
}

class GlucoUSApp extends StatelessWidget {
  const GlucoUSApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GlucoUS 시뮬레이터',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Roboto',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
