import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:giraffe/helpers/unsplash_helper.dart';
import 'package:giraffe/providers/item.dart';
import 'package:http/http.dart' as http;
import '../helpers/db_helper.dart';

class Items with ChangeNotifier {
  List<Item> _items = [];
  List<Item> _itemsFavorite = [];
  List recentsearch = [];

  List<Item> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }

    return [..._items];
  }

  List<Item> get itemsFavorite {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }

    return [..._itemsFavorite];
  }

  Future<void> setFavorite(String id, String smallImageUrl, String fullImageUrl,
      String description, String title, String author, String createdAt) async {
    try {
      final List<Item> loadedFavorite = itemsFavorite;
      loadedFavorite.add(Item(
        id: id,
        smallImageUrl: smallImageUrl,
        fullImageUrl: fullImageUrl,
        description: description,
        title: title,
        author: author,
        createdAt: createdAt,
        isFavorite: false,
      ));

      _itemsFavorite = loadedFavorite;
      notifyListeners();
      DBHelper.insert('user_favorite', {
        'id': id,
        'smallImageUrl': smallImageUrl,
        'fullImageUrl': fullImageUrl,
        'description': description,
        'title': title,
        'author': author,
        'createdAt': createdAt,
      });
    } catch (error) {
      print(error);
      throw (error);
    }
    print(itemsFavorite);
  }

  Future<void> deleteFavorite(String id) async {
    final existingItemIndex =
        _itemsFavorite.indexWhere((item) => item.id == id);
    _itemsFavorite.removeAt(existingItemIndex);
    notifyListeners();
    DBHelper.delete('user_favorite', id);
  }

  Future<void> fetchAndSetPhotos(String search) async {
    var url =
        'https://api.unsplash.com/search/photos?per_page=1000&client_id=UNSPLASH_API_KEY&query=search';
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      final List<Item> loadedProducts = [];

      var data = extractedData['results'] as List<dynamic>;
      print('number of fetched photos = ' + data.length.toString());

      for (var i = 0; i < data.length; i++) {
        // print(data[i]['urls']['small']);
        // print(data[i]['description']);
        print(data[i]['title']);

        loadedProducts.add(Item(
          id: data[i]['id'].toString(),
          smallImageUrl: data[i]['urls']['small'],
          fullImageUrl: data[i]['urls']['full'],
          description: data[i]['description'],
          title: data[i]['id'],
          author: data[i]['user']['name'],
          createdAt: data[i]['created_at'],
          isFavorite: false,
        ));
      }
      _items = loadedProducts;
      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  Future<void> fetchAndSetRandomPhotos() async {
    var url =
        'https://api.unsplash.com/photos/random?count=20&client_id=adsadsad';
    try {
      final response = await http.get(url);
      final extractedData =
          json.decode(response.body); //as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      final List<Item> loadedProducts = [];

      var data = extractedData as List<dynamic>;

      for (var i = 0; i < data.length; i++) {
        // print(data[i]['urls']['small']);
        // print(data[i]['description']);
        //print(data[i]['title']);

        loadedProducts.add(Item(
          id: data[i]['id'].toString(),
          smallImageUrl: data[i]['urls']['small'],
          fullImageUrl: data[i]['urls']['regular'],
          description: data[i]['description'],
          title: data[i]['user']['bio'],
          author: data[i]['user']['name'],
          createdAt: data[i]['created_at'],
          isFavorite: false,
        ));
      }
      _items = loadedProducts;
      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  Future<void> fetchAndSetFavorites() async {
    final dataList = await DBHelper.getData('user_favorite');
    _itemsFavorite = dataList
        .map((item) => Item(
              id: item['id'],
              smallImageUrl: item['smallImageUrl'],
              fullImageUrl: item['fullImageUrl'],
              description: item['description'],
              title: item['title'],
              author: item['author'],
              createdAt: item['createdAt'],
            ))
        .toList();
    notifyListeners();
  }
}
