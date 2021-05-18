import 'package:flutter/material.dart';
import 'package:giraffe/providers/items.dart';
import 'package:provider/provider.dart';
import 'all_screen.dart';
import 'favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);
  static const routeName = '/homeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  bool isFavoritePage=false;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeWindow(),
        'title': 'Home',
      },
      {
        'page': FavoriteScreen(),
        'title': 'Your Favorite',
      },
    ];

    // Future.delayed(Duration.zero).then((_) {
    //   Provider.of<Items>(context, listen: false).fetchAndSetRandomPhotos();
    //   //print('Get random 20 photos at start');
    // });

    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      if (index == 0) {
        isFavoritePage = false;
      } else {
        isFavoritePage = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('HomeScreen'),),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: isFavoritePage ? Color(0xFFFCC443) : Colors.teal,
        currentIndex: _selectedPageIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedFontSize: 12,
        selectedItemColor: isFavoritePage ? Colors.teal : Color(0xFFFCC443),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              //color: Colors.blueGrey,
              size: 25,
            ),
            // ignore: deprecated_member_use
            title: Text('All'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              //color: Colors.grey,
              size: 25,
            ),
            // ignore: deprecated_member_use
            title: Text('Favorite'),
          ),
        ],
        onTap: _selectPage,
      ),
    );
  }
}
