import 'package:flutter/material.dart';
import 'package:giraffe/providers/items.dart';
import 'package:giraffe/widgets/photos_grid.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  FavoriteScreen({Key key}) : super(key: key);

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCC443),
      body: FutureBuilder(
        future:
            Provider.of<Items>(context, listen: false).fetchAndSetFavorites(),
        builder: (ctx, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Stack(children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(200),
                          bottomLeft: Radius.circular(60),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    SafeArea(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 55, left: 20),
                                  child: Text(
                                    "My favorites",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Color(0xFF222B45),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Expanded(child: PhotosGrid(true)),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            )))
                    ////////////////////////////////////////////////////////////////////////
                  ]),
      ),
    );
  }
}
