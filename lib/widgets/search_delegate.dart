import 'package:flutter/material.dart';
import 'package:giraffe/providers/items.dart';
import 'package:provider/provider.dart';

class DataSearch extends SearchDelegate<String> {
  //final qu = ['Bikes', 'Cars', 'Cities', 'Forest', 'Sky', 'Fire'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final searchData = Provider.of<Items>(context);
    List recentphoto = searchData.recentsearch;
    Provider.of<Items>(context, listen: false).fetchAndSetPhotos(query);
    recentphoto.add(query);
    Navigator.of(context).pop();
    print(recentphoto);
    return CircularProgressIndicator();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final searchData = Provider.of<Items>(context);
    List recentphoto = searchData.recentsearch;
    List qu = recentphoto;
    final sugestionList = query.isEmpty
        ? recentphoto
        : qu.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.photo),
        title: RichText(
          text: TextSpan(
            text: sugestionList[index].substring(0, query.length),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: sugestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      itemCount: sugestionList.length,
    );
  }
}
