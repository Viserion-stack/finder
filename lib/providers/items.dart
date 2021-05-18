import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:giraffe/helpers/unsplash_helper.dart';
import 'package:giraffe/providers/item.dart';
import 'package:http/http.dart' as http;
import '../helpers/db_helper.dart';

class Items with ChangeNotifier {
  //List<Item> _items = [];

  List<Item> _items = [
    Item(
      numerGrupy: 'Ia',
      nazwaGrupySzczotek: 'Brązowo-Grafitowe',
      dopuszczalanaGestoscPradu: '20',
      dopuszczalanaMaksymalnapredkoscObrotowa: '20-25',
      napieciePrzejsciaNaPareSzczotek: '0.3-0.6',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: '6-10',
      rezystywnosc: '0.08',
      twardosc: '0.50',
      wspolczynnikTarciaMax: 'od 10 do 0.15',
      zuzyciepo50hPracy: 'do 0.30',
      ciezarObjetosciowy: '4.8-6.0',
      zawartoscPopiolu: 'do 1',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
    Item(
      numerGrupy: 'a',
      nazwaGrupySzczotek: 'a',
      dopuszczalanaGestoscPradu: 'a',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'a',
      napieciePrzejsciaNaPareSzczotek: 'a',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'a',
      rezystywnosc: 'a',
      twardosc: 'a',
      wspolczynnikTarciaMax: 'a',
      zuzyciepo50hPracy: 'a',
      ciezarObjetosciowy: 'a',
      zawartoscPopiolu: 'a',
    ),
  ];
  // var _showFavoritesOnly = false;

  // List<Item> get items {
  //   // if (_showFavoritesOnly) {
  //   //   return _items.where((prodItem) => prodItem.isFavorite).toList();
  //   // }
  //   return [..._items];
  // }

  Item findById(String id) {
    //return _items.firstWhere((prod) => prod.id == id);
  }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
