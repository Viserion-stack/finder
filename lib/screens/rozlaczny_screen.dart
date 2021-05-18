import 'package:flutter/material.dart';

class RozlacznyScreen extends StatefulWidget {
  RozlacznyScreen({Key key}) : super(key: key);

  @override
  _RozlacznyScreenState createState() => _RozlacznyScreenState();
}

class _RozlacznyScreenState extends State<RozlacznyScreen> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Styk Rozlaczny'),),
    );
  }
}