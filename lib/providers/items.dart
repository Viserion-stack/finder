import 'package:flutter/material.dart';
//import 'package:giraffe/helpers/unsplash_helper.dart';
import 'package:giraffe/providers/item.dart';

class Items with ChangeNotifier {
  //List<Item> _items = [];

  List<String> selectedItems = [];

  List<Item> items = [
    Item(
      numerGrupy: '1a',
      nazwaGrupySzczotek: 'Brązowo-grafitowe',
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

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  List<ItemKomutator> itemsKomutator = [
    ItemKomutator(
      material: 'Miedź elektrolityczna',
      proporcje: 'Cu 99.9',
      iacs: '100',
      mpa: '250',
      hb: '80',
      ts: '155-170',
      tpo: '160',
    ),
    ItemKomutator(
      material: 'Miedź ceramiczna',
      proporcje: 'Cu 99.9',
      iacs: '85',
      mpa: '250',
      hb: '70',
      ts: '250',
      tpo: '180',
    ),
    ItemKomutator(
      material: 'Srebro - miedź',
      proporcje: 'Ag 0.07 - 0.14 reszta Cu',
      iacs: '96',
      mpa: '250',
      hb: '85',
      ts: '240',
      tpo: '220',
    ),
    ItemKomutator(
      material: 'Brąz magnezowy',
      proporcje: 'Mg 0.1 - 0.35 reszta Cu',
      iacs: '80',
      mpa: '270',
      hb: '90',
      ts: '260',
      tpo: '230',
    ),
    ItemKomutator(
      material: 'Brązowo kadamowy',
      proporcje: 'Cd 0.9 - 1.2 reszta Cu',
      iacs: '80',
      mpa: '270',
      hb: '95',
      ts: '250',
      tpo: '230',
    ),
    ItemKomutator(
      material: 'Brąz chromowy',
      proporcje: 'Cr 0.4 - 1.0',
      iacs: '75',
      mpa: '380',
      hb: '110',
      ts: '325',
      tpo: '270',
    ),
    ItemKomutator(
      material: 'Brąz Cr - Zr',
      proporcje: 'Cr 0.2-0.4, Zr 0.15-0.35 reszta Cu ',
      iacs: '80',
      mpa: '450',
      hb: '120',
      ts: '450',
      tpo: '350',
    ),
    ItemKomutator(
      material: 'Brąz cyrkonowy',
      proporcje: 'Zr 0.2 - 0.4 reszta Cu',
      iacs: '85',
      mpa: '350',
      hb: '100',
      ts: '350',
      tpo: '250',
    ),
    ItemKomutator(
      material: 'Stal nierdzewna ',
      proporcje: 'Cr 17-19, Ni 8-9.5, Mn 10-20, Ti 0.5-0.7 reszta Fe',
      iacs: '2.6',
      mpa: '550',
      hb: '160',
      ts: '-',
      tpo: '600',
    ),
    ItemKomutator(
      material: 'Brąz cynowo - cynkowy',
      proporcje: 'Sn 3-5, Zn 3-5, Pb 1.5-3.5, reszta Cu',
      iacs: '15',
      mpa: '550',
      hb: '160',
      ts: '400',
      tpo: '350',
    ),
  ];

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  List<ItemPowlokiOchronne> itemsPowlokiOchronne = [
    ItemPowlokiOchronne(
      lp: '1',
      powlokiOchronne: 'Al (powłoka niklowa) - Cu (powłoka niklowa)',
      wskaznikOceny: '1 - Wynik Najlepszy',
    ),
    ItemPowlokiOchronne(
      lp: '2',
      powlokiOchronne: 'Al (powłoka miedziana)',
      wskaznikOceny: '0.7',
    ),
    ItemPowlokiOchronne(
      lp: '3',
      powlokiOchronne: 'Al-Cu (powłoka niklowa)',
      wskaznikOceny: '0.54',
    ),
    ItemPowlokiOchronne(
      lp: '4',
      powlokiOchronne: 'Al-Cu (powłoka srebrna',
      wskaznikOceny: '0.35',
    ),
    ItemPowlokiOchronne(
      lp: '5',
      powlokiOchronne: 'Al-Cu (brak powłoki)',
      wskaznikOceny: '0.29',
    ),
    ItemPowlokiOchronne(
      lp: '6',
      powlokiOchronne: 'Al-Cu (powłoka cynowa)',
      wskaznikOceny: '0.26',
    ),
  ];
  /////////////////////////////////////////////////////////////////////////////////////
  ///I
  List<ItemPowlokiOchronne2> itemsPowlokiOchronne2 = [
    ItemPowlokiOchronne2(
      material: 'Nikiel',
      gestosc: '8.8',
      p: '8',
      lambda: '70',
      hb: '70',
      alfa: '0.005',
      e: '2.1',
      tempMieknienia: '520',
      temptopnienia: '1452',
    ),
    ItemPowlokiOchronne2(
      material: 'Miedź',
      gestosc: '8.9',
      p: '1.75',
      lambda: '380',
      hb: '35',
      alfa: '0.004',
      e: '2.1',
      tempMieknienia: '190',
      temptopnienia: '1083',
    ),
    ItemPowlokiOchronne2(
      material: 'Cyna',
      gestosc: '7.3',
      p: '12',
      lambda: '64',
      hb: '4',
      alfa: '0.0045',
      e: '0.4',
      tempMieknienia: '100',
      temptopnienia: '232',
    ),
    ItemPowlokiOchronne2(
      material: 'Srebro',
      gestosc: '10.5',
      p: '1.65',
      lambda: '418',
      hb: '25',
      alfa: '0.004',
      e: '0.75',
      tempMieknienia: '180',
      temptopnienia: '960',
    ),
  ];

  // var _showFavoritesOnly = false;

  ItemPowlokiOchronne2 findByIdItemsPowlokiOchronneByName(String materialName){
    
      return itemsPowlokiOchronne2.firstWhere((item) => item.material == materialName);
  
    
  }

  Item findById(String title) {
    return items.firstWhere((item) => item.nazwaGrupySzczotek == title,
        orElse: () => null);
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
