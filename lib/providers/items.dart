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
      numerGrupy: '1a',
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
      numerGrupy: '1b',
      nazwaGrupySzczotek: 'Miedziowo-grafitowe z dużą zawartością miedzi',
      dopuszczalanaGestoscPradu: '19',
      dopuszczalanaMaksymalnapredkoscObrotowa: '20',
      napieciePrzejsciaNaPareSzczotek: '0.1-0.5',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: '6-10',
      rezystywnosc: '0.05',
      twardosc: '0.40',
      wspolczynnikTarciaMax: 'do 0.20',
      zuzyciepo50hPracy: 'do 0.50',
      ciezarObjetosciowy: 'od 4.0 - 5.5',
      zawartoscPopiolu: 'do 1',
    ),
    Item(
      numerGrupy: '1c',
      nazwaGrupySzczotek: 'Miedziowo-grafitowe ze średnią zawartością miedzi',
      dopuszczalanaGestoscPradu: '15',
      dopuszczalanaMaksymalnapredkoscObrotowa: '20',
      napieciePrzejsciaNaPareSzczotek: '0.5-1.5',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'do 40',
      rezystywnosc: '0.3',
      twardosc: '1.5',
      wspolczynnikTarciaMax: '15-30 do 0.25',
      zuzyciepo50hPracy: 'do 0.30',
      ciezarObjetosciowy: '3.5-4.5',
      zawartoscPopiolu: 'do 3',
    ),
    Item(
      numerGrupy: '1d',
      nazwaGrupySzczotek: 'Miedziowo-grafitowe z małą zawartością miedzi',
      dopuszczalanaGestoscPradu: '12-15',
      dopuszczalanaMaksymalnapredkoscObrotowa: '25',
      napieciePrzejsciaNaPareSzczotek: '1.0-2.2',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'do 80',
      rezystywnosc: '1.0',
      twardosc: '15',
      wspolczynnikTarciaMax: '20-40 do 0.20',
      zuzyciepo50hPracy: 'do 0.20',
      ciezarObjetosciowy: '2.0-3.0',
      zawartoscPopiolu: 'do 5',
    ),
    Item(
      numerGrupy: 'Srebrno-grafitowe',
      nazwaGrupySzczotek: '',
      dopuszczalanaGestoscPradu: '',
      dopuszczalanaMaksymalnapredkoscObrotowa: 'własności',
      napieciePrzejsciaNaPareSzczotek: 'podobne jak',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'dla grup',
      rezystywnosc: ' 1a - 1d w zależności',
      twardosc: 'od',
      wspolczynnikTarciaMax: 'zawarości',
      zuzyciepo50hPracy: 'srebra',
      ciezarObjetosciowy: '',
      zawartoscPopiolu: '',
    ),
    Item(
      numerGrupy: '2a',
      nazwaGrupySzczotek: 'Węglowo-grafitowe średniej twardości',
      dopuszczalanaGestoscPradu: '10',
      dopuszczalanaMaksymalnapredkoscObrotowa: '20',
      napieciePrzejsciaNaPareSzczotek: '1.5-2.5',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: '120-220',
      rezystywnosc: '20-40',
      twardosc: '30-50',
      wspolczynnikTarciaMax: 'do 0.25',
      zuzyciepo50hPracy: '0.25',
      ciezarObjetosciowy: '1.45-1.60',
      zawartoscPopiolu: 'do 8',
    ),
    Item(
      numerGrupy: '2b',
      nazwaGrupySzczotek: 'Węglowo-grafitowe twarde',
      dopuszczalanaGestoscPradu: '5-8',
      dopuszczalanaMaksymalnapredkoscObrotowa: '12-15',
      napieciePrzejsciaNaPareSzczotek: '1.8-3.0',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'do 500',
      rezystywnosc: '30-100',
      twardosc: '40-80',
      wspolczynnikTarciaMax: 'do 0.30',
      zuzyciepo50hPracy: 'do 0.15',
      ciezarObjetosciowy: '1.45-1.60',
      zawartoscPopiolu: 'do 5',
    ),
    Item(
      numerGrupy: '3a',
      nazwaGrupySzczotek: 'Grafitowe',
      dopuszczalanaGestoscPradu: '10',
      dopuszczalanaMaksymalnapredkoscObrotowa: '25-30',
      napieciePrzejsciaNaPareSzczotek: '1.5-2.5',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: '120',
      rezystywnosc: '15-30',
      twardosc: '25-40',
      wspolczynnikTarciaMax: 'do 0.20',
      zuzyciepo50hPracy: 'do 0.30',
      ciezarObjetosciowy: '1.50-1.70',
      zawartoscPopiolu: 'do 10',
    ),
    Item(
      numerGrupy: '3b',
      nazwaGrupySzczotek: 'Wysokooporowe (grafit)',
      dopuszczalanaGestoscPradu: '2.5-4',
      dopuszczalanaMaksymalnapredkoscObrotowa: '15-40',
      napieciePrzejsciaNaPareSzczotek: 'do 7',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: '1500 V i więcej',
      rezystywnosc: 'do 1000',
      twardosc: '20-40',
      wspolczynnikTarciaMax: 'do 0.20',
      zuzyciepo50hPracy: 'do 0.20',
      ciezarObjetosciowy: '1.50-1.80',
      zawartoscPopiolu: 'do 10',
    ),
    Item(
      numerGrupy: '3c',
      nazwaGrupySzczotek: 'Naturalne grafitowe',
      dopuszczalanaGestoscPradu: '10',
      dopuszczalanaMaksymalnapredkoscObrotowa: '50-70',
      napieciePrzejsciaNaPareSzczotek: '1.2-2.5',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: '120',
      rezystywnosc: '15-30',
      twardosc: '10-30',
      wspolczynnikTarciaMax: 'do 0.15',
      zuzyciepo50hPracy: 'do 0.30',
      ciezarObjetosciowy: '1.50-1.70',
      zawartoscPopiolu: 'do 10',
    ),
    Item(
      numerGrupy: '3d',
      nazwaGrupySzczotek: 'Elektrografitowe',
      dopuszczalanaGestoscPradu: '10',
      dopuszczalanaMaksymalnapredkoscObrotowa: '30',
      napieciePrzejsciaNaPareSzczotek: '1.5-2.5',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: '120',
      rezystywnosc: '15-40',
      twardosc: '20-40',
      wspolczynnikTarciaMax: 'do 0.25',
      zuzyciepo50hPracy: 'do 0.25',
      ciezarObjetosciowy: '1.45-1.60',
      zawartoscPopiolu: 'do 1',
    ),
    Item(
      numerGrupy: '4a',
      nazwaGrupySzczotek: 'Elektrografitowane miękkie',
      dopuszczalanaGestoscPradu: '10-12',
      dopuszczalanaMaksymalnapredkoscObrotowa: '40-70',
      napieciePrzejsciaNaPareSzczotek: '1.5-2.5',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: '120',
      rezystywnosc: '10-20',
      twardosc: '10-30',
      wspolczynnikTarciaMax: 'do 0.15',
      zuzyciepo50hPracy: 'do 0.30',
      ciezarObjetosciowy: '1.50-1.70',
      zawartoscPopiolu: 'do 2',
    ),
    Item(
      numerGrupy: '4b',
      nazwaGrupySzczotek: 'Elektrografitowane średniej twardości',
      dopuszczalanaGestoscPradu: '10',
      dopuszczalanaMaksymalnapredkoscObrotowa: '25-30',
      napieciePrzejsciaNaPareSzczotek: '1.8-3.0',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: '120-230',
      rezystywnosc: '20-40',
      twardosc: '30-60',
      wspolczynnikTarciaMax: 'ado 0.20',
      zuzyciepo50hPracy: 'do 0.15',
      ciezarObjetosciowy: '1.50-1.70',
      zawartoscPopiolu: 'do 1',
    ),
    Item(
      numerGrupy: '4c',
      nazwaGrupySzczotek: 'Elektrografitowane twarde',
      dopuszczalanaGestoscPradu: '10',
      dopuszczalanaMaksymalnapredkoscObrotowa: '50-60',
      napieciePrzejsciaNaPareSzczotek: '1.8-3.0',
      napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone: 'do 1000',
      rezystywnosc: '25-70',
      twardosc: '40-70',
      wspolczynnikTarciaMax: 'do 0.25',
      zuzyciepo50hPracy: 'do 0.15',
      ciezarObjetosciowy: '1.50-1.70',
      zawartoscPopiolu: 'do 0.5',
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
