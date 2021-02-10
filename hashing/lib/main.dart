import 'package:flutter/material.dart';
import 'package:hashing/Hash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    String text = 'MechaCoding';
    print('MD5: ${Hash.md5(text)}');
    print('SHA-1: ${Hash.sha1(text)}');
    print('SHA-256: ${Hash.sha256(text)}');
    print('SHA-512: ${Hash.sha512(text)}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
