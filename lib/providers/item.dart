import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Item with ChangeNotifier {
  final String id;
  final String smallImageUrl;
  final String fullImageUrl;
  final String description;
  final String title;
  final String author;
  final String createdAt;
  bool isFavorite;

  Item({
    @required this.id,
    @required this.smallImageUrl,
    @required this.fullImageUrl,
    @required this.description,
    @required this.title,
    @required this.author,
    @required this.createdAt,
    this.isFavorite,
  });

  void _setFavValue(bool newValue) {
    isFavorite = newValue;
    notifyListeners();
  }

  Future<void> toggleFavoriteStatus() async {
    final oldStatus = isFavorite;
    isFavorite = !isFavorite;
    notifyListeners();
    final url = 'https://flutter-update-fb73c.firebaseio.com/products/$id.json';
    try {
      final response = await http.patch(
        url,
        body: json.encode({
          'isFavorite': isFavorite,
        }),
      );
      if (response.statusCode >= 400) {
        _setFavValue(oldStatus);
      }
    } catch (error) {
      _setFavValue(oldStatus);
    }
  }
}
