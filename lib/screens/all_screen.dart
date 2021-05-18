import 'package:flutter/material.dart';
import 'package:giraffe/screens/nierozlaczny_screen.dart';
import 'package:giraffe/screens/rozlaczny_screen.dart';
import 'package:giraffe/screens/slizgowy_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AllScreen extends StatefulWidget {
  AllScreen({Key key}) : super(key: key);

  @override
  _AllScreenState createState() => _AllScreenState();
}

// Future<void> _refreshRandomPhotos(BuildContext context) async {
//   await Provider.of<Items>(context, listen: false).fetchAndSetRandomPhotos();
// }

class _AllScreenState extends State<AllScreen> {
  _onAlertButtonsPressed(_) {
    //final settings = Provider.of<SettingsUser>(context);
    Alert(
      style: AlertStyle(
        //alertBorder: ,
        overlayColor: Color(0xDBEEEEEE),
        backgroundColor: Colors.white,
      ),
      context: context,
      type: AlertType.none,
      title: 'Autor: Mateusz Molicki',
      desc: 'Temat: Temat \n Rok: Rok',
      buttons: [
        // DialogButton(
        //   radius: BorderRadius.circular(27),
        //   child: Padding(
        //     padding: const EdgeInsets.only(left: 10.0, right: 10),
        //     child: Row(children: [
        //       Icon(
        //         Icons.collections,
        //         color: Colors.white,
        //         size: 20,
        //       ),
        //       SizedBox(width: 5),
        //       Text(
        //         "Gallery",
        //         style: TextStyle(color: Colors.white, fontSize: 16),
        //       ),
        //     ]),
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   color: Color(0xFFF8BB06),
        // ),
        DialogButton(
          width: 100,
          radius: BorderRadius.circular(27),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(children: [
              Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(width: 5),
              Text(
                "OK",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ]),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Color(0xFFF8BB06),
        )
      ],
    ).show();
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(_onAlertButtonsPressed);
    print('aaaa');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Strona Główna'),
        // actions: <Widget>[
        //   IconButton(
        //       icon: Icon(Icons.shuffle),
        //       onPressed: () {
        //         Provider.of<Items>(context, listen: false)
        //             .fetchAndSetRandomPhotos('');
        //       }),
        // IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: () {
        //       showSearch(context: context, delegate: DataSearch());
        //     }),
        //],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Text(
              'MATERAŁY STYKOWE STOSOWANE W ELEKTROTECHNICE',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48.0),
              child: Text(
                'PRZEZNACZENIE STYKU',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF8BB06),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SlizgowyScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Styk Ślizgowy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF8BB06),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RozlacznyScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Styk Rozłączny',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF8BB06),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NierozlacznyScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Styk Nierozłączny',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
