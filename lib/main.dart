import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:giraffe/providers/items.dart';
import 'package:giraffe/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
  doWhenWindowReady((){
final win = appWindow;
final initialSize = Size(1500,800);
win.minSize = initialSize;
win.alignment = Alignment.center;
win.title = "Materiały stykowe stosowane w elektrotechnice";
win.show();
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider.value(
          value: Items(),
        ),
      ],
          child: MaterialApp(
        title: 'Giraffe',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.quicksandTextTheme(Theme.of(context).textTheme),
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        routes: {
          HomeScreen.routeName: (ctx) => HomeScreen(),
          //ItemDetailScreen.routeName: (ctx) => ItemDetailScreen(),
            //FavouriteScreen.routeName: (ctx) => FavouriteScreen(),
        }
        ,
        onUnknownRoute: (settings) {
          return MaterialPageRoute(
            builder: (ctx) => HomeScreen(),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text('Giraffe'),
    );
  }
}
