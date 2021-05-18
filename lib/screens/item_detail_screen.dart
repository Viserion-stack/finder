import 'package:flutter/material.dart';
import 'package:giraffe/providers/items.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ItemDetailScreen extends StatefulWidget {
  //ItemDetailScreen({Key key, this.id, this.imageUrl, this.description}) : super(key: key);
  static const routeName = '/orderDetailScreen';

  final String id;
  final String smallImageUrl;
  final String fullImageUrl;
  final String description;
  final String title;
  final String author;
  final String createdAt;
  bool isfavoriteScreen;

  ItemDetailScreen({
    this.id,
    this.smallImageUrl,
    this.fullImageUrl,
    this.description,
    this.title,
    this.author,
    this.createdAt,
    this.isfavoriteScreen,
  });

  @override
  _ItemDetailScreenState createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.teal,
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.description == null ? '' : widget.description,
                style: TextStyle(fontSize: 12),
              ),
              background: Hero(
                tag: widget.id,
                child: Image.network(
                  widget.smallImageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    widget.author,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 18,
                    ),
                    //width: double.infinity,
                    child: Text(
                      'Created on: ',
                      textAlign: TextAlign.start,
                      softWrap: true,
                    ),
                  ),
                  Container(
                    //padding: EdgeInsets.symmetric(horizontal: 20),
                    // width: double.infinity,
                    child: Text(
                      widget.createdAt.substring(0, 10),
                      textAlign: TextAlign.start,
                      softWrap: true,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Biography: ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Text(
                    widget.title == null
                        ? 'There is no biography avaiable for this photo.'
                        : widget.title,
                    textAlign: TextAlign.start,
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Description: ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Text(
                    widget.description == null
                        ? 'There is no available description for this photo.'
                        : widget.description,
                    textAlign: TextAlign.start,
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width / 2,
                    child: ElevatedButton(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      style: ElevatedButton.styleFrom(
                        //primary: buttonReady ? Colors.grey : Color(0xFFFFD320),
                        primary: Colors.teal,

                        onPrimary: Colors.white,

                        onSurface: Colors.grey,
                        shadowColor: Colors.grey,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      onPressed: () async {
                        if (widget.isfavoriteScreen == false) {
                          await Provider.of<Items>(context, listen: false)
                              .setFavorite(
                                  widget.id,
                                  widget.smallImageUrl,
                                  widget.fullImageUrl,
                                  widget.description,
                                  widget.title,
                                  widget.author,
                                  widget.createdAt);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Photo has been added to favorites!'),
                            ),
                          );
                        } else {
                          await Provider.of<Items>(context, listen: false)
                              .deleteFavorite(widget.id);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  'Photo has been deleted from favorites!'),
                            ),
                          );
                          Navigator.of(context).pop();
                        }
                      },
                      child: Center(
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              size: 29,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  widget.isfavoriteScreen
                                      ? 'Delete from favorite'
                                      : 'Add to Favorite',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
