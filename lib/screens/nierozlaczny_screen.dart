

import 'package:flutter/material.dart';

class NierozlacznyScreen extends StatefulWidget {
  NierozlacznyScreen({Key key}) : super(key: key);

  @override
  _NierozlacznyScreenState createState() => _NierozlacznyScreenState();
}

class _NierozlacznyScreenState extends State<NierozlacznyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Styk Nierozłączny'),),
    );
  }
}