import 'package:flutter/material.dart';
import 'package:giraffe/screens/pierscienie_i_komutatory_screen.dart';
import 'package:giraffe/screens/slizgowy_screen.dart';

class SlizgowyGeneralScreen extends StatelessWidget {
  const SlizgowyGeneralScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD500),
      appBar: AppBar(
        backgroundColor: Color(0xFFF6A00C),
        title: Text('MATERIAŁY STOSOWANE NA STYK I ŚLIZGOWE',
            style: TextStyle(
              fontSize: 19,
            )),
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF6A00C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white, width: 2.0))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SlizgowyScreen()));
                  },
                  child: Container(
                      height: 200,
                      width: 200,
                      child: Center(
                          child: Text(
                        'SZCZOTKI ELEKTROTECHNICZNE',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                        textAlign: TextAlign.center,
                      )))),
              SizedBox(
                width: 200,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF6A00C),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white, width: 2.0))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PierscienieKomutatoryScreen()));
                  },
                  child: Container(
                      height: 200,
                      width: 200,
                      child: Center(
                          child: Text(
                        'PIERŚCIENIE I KOMUTATORY',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                        textAlign: TextAlign.center,
                      )))),
            ]),
      ),
    );
  }
}
