import 'package:flutter/foundation.dart';

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

class ItemKomutator with ChangeNotifier {
  final String material;
  final String proporcje;
  final String iacs;
  final String mpa;
  final String hb;
  final String ts;
  final String tpo;

  ItemKomutator({
    @required this.material,
    @required this.proporcje,
    @required this.iacs,
    @required this.mpa,
    @required this.hb,
    @required this.ts,
    @required this.tpo,
  });
}

class ItemPowlokiOchronne with ChangeNotifier {
  final String lp;
  final String powlokiOchronne;
  final String wskaznikOceny;

  ItemPowlokiOchronne({
    @required this.lp,
    @required this.powlokiOchronne,
    @required this.wskaznikOceny,
  });
}

class ItemPowlokiOchronne2 with ChangeNotifier {
  final String material;
  final String gestosc;
  final String p;
  final String lambda;
  final String hb;
  final String alfa;
  final String e;
  final String tempMieknienia;
  final String temptopnienia;

  ItemPowlokiOchronne2({
    @required this.material,
    @required this.gestosc,
    @required this.p,
    @required this.lambda,
    @required this.hb,
    @required this.alfa,
    @required this.e,
    @required this.tempMieknienia,
    @required this.temptopnienia,
  });
}
