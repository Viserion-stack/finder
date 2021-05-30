import 'package:flutter/material.dart';
import 'package:giraffe/screens/pierscienie_i_komutatory_screen.dart';
import 'package:giraffe/screens/slizgowy_screen.dart';

class SlizgowyGeneralScreen extends StatelessWidget {
  const SlizgowyGeneralScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MATERIAŁY STOSOWANE NA STYK I ŚLIZGOWE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SlizgowyScreen()));
              },
              child: Text('SZCZOTKI ELEKTROTECHNICZNE')),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PierscienieKomutatoryScreen()));
              },
              child: Text('PIERŚCIENIE I KOMUTATORY')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Powrót')),
        ]),
      ),
    );
  }
}
