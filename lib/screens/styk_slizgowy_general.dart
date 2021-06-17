import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import '../screens/pierscienie_i_komutatory_screen.dart';
import '../screens/slizgowy_screen.dart';

class SlizgowyGeneralScreen extends StatelessWidget {
  const SlizgowyGeneralScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD500),
      body: Column(children: [
        Container(
            decoration: BoxDecoration(color: Color(0xFFF6A00C), boxShadow: [
              BoxShadow(
                  blurRadius: 5, offset: Offset(0, 0), color: Colors.grey),
            ]),
            width: double.infinity,
            height: 80,
            child: Row(children: [
              IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Expanded(
                child: Column(children: [
                  // WindowTitleBarBox(
                  //     child: Row(children: [
                  //   Expanded(child: MoveWindow()),
                  //   WindowButtons(),
                  // ])),
                  Expanded(
                    child: Row(children: [
                      Expanded(
                        child: Text(
                          'Materiały stosowane na zestyk nierozłączny ruchomy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ]),
              )
            ])),
        Expanded(
          child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF6A00C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side:
                                  BorderSide(color: Colors.white, width: 2.0))),
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
                              side:
                                  BorderSide(color: Colors.white, width: 2.0))),
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
        ),
      ]),
    );
  }
}
