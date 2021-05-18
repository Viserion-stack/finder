import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Item with ChangeNotifier {
  final String numerGrupy;
  final String nazwaGrupySzczotek;
  final String dopuszczalanaGestoscPradu;
  final String dopuszczalanaMaksymalnapredkoscObrotowa;
  final String napieciePrzejsciaNaPareSzczotek;
  final String napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone;
  final String rezystywnosc;
  final String twardosc;
  final String wspolczynnikTarciaMax;
  final String zuzyciepo50hPracy;
  final String ciezarObjetosciowy;
  final String zawartoscPopiolu;

  Item({
    @required this.numerGrupy,
    @required this.nazwaGrupySzczotek,
    @required this.dopuszczalanaGestoscPradu,
    @required this.dopuszczalanaMaksymalnapredkoscObrotowa,
    @required this.napieciePrzejsciaNaPareSzczotek,
    @required this.napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone,
    @required this.rezystywnosc,
    @required this.twardosc,
    @required this.wspolczynnikTarciaMax,
    @required this.zuzyciepo50hPracy,
    @required this.ciezarObjetosciowy,
    @required this.zawartoscPopiolu,
  });
}
