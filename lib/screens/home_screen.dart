import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'all_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);
  static const routeName = '/homeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _onAlertButtonsPressed() {
    Alert(
      style: AlertStyle(
        //alertBorder: ,
        overlayColor: Color(0xDBEEEEEE),
        backgroundColor: Colors.white,
        titleStyle: GoogleFonts.quicksand(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        descStyle: GoogleFonts.quicksand(
          color: Colors.black,
          fontSize: 13,
        ),
      ),
      context: context,
      type: AlertType.none,
      title: 'Autor: Mateusz Malicki',
      desc: "Temat: temat \n Rok: rok",
      buttons: [
        DialogButton(
          color: Color(0xFFF8BB06),
            radius: BorderRadius.circular(27),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Center(
                child: Text(
                  "OK",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            }
            //color:  Color(0xFFF8BB06),
            ),
      ],
    ).show();
  }

  bool isFavoritePage = false;

  @override
  void initState() {
  
    // Future.delayed(Duration.zero).then((_) {
    //   Provider.of<Items>(context, listen: false).fetchAndSetRandomPhotos();
    //   //print('Get random 20 photos at start');
    // });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => _onAlertButtonsPressed());
    return Scaffold(
      //appBar: AppBar(title: Text('HomeScreen'),),
      body: HomeWindow(),
    );
  }
}
