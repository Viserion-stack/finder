import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:giraffe/providers/item.dart';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
String nameFile = '';


showAlertDialog(BuildContext context, List<Item> items) {
  
  String saveController = TextEditingController().text;
  
  List row = [];
  String csvData = '';
  print(nameFile);

  Widget saveButton = ElevatedButton(
    onPressed: () async {
      for (int i = 0; i < items.length; i++) {
        row = [];
        row.add(items[i].numerGrupy);
        row.add(items[i].nazwaGrupySzczotek);
        row.add(items[i].dopuszczalanaGestoscPradu);
        row.add(items[i].dopuszczalanaMaksymalnapredkoscObrotowa);
        row.add(items[i].napieciePrzejsciaNaPareSzczotek);
        row.add(items[i].napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone);
        row.add(items[i].rezystywnosc);
        row.add(items[i].twardosc);
        row.add(items[i].wspolczynnikTarciaMax);
        row.add(items[i].zuzyciepo50hPracy);
        row.add(items[i].ciezarObjetosciowy);
        row.add(items[i].zawartoscPopiolu);

        for (int j = 0; j < row.length; j++) {
          csvData += (row[j] + ';');
        }
        csvData += '\n';
        
        Directory appDocDir = await getApplicationDocumentsDirectory();
        String appDocPath = '${appDocDir.path}/$nameFile.csv';
        final File file = File(appDocPath);
        await file.writeAsString(csvData);
      }
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      elevation: 0,
    ),
    child: Text(
      'Zapisz',
      style: TextStyle(color: Colors.orange),
    ),
  );

  Widget cancelButton = ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      elevation: 0,
    ),
    child: Text(
      'Anuluj',
      style: TextStyle(color: Colors.orange),
    ),
  );

  AlertDialog alert = AlertDialog(
    title: Text(
      'Zapisz do pliku',
      style: TextStyle(
        color: Colors.orange,
        fontSize: 15,
      ),
    ),
    content: Container(
      height: 40,
      width: 250,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: TextFormField(
            onChanged: (value){
              nameFile = value;
            },
            //controller: saveController,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              spreadRadius: 2.0,
            )
          ]),
    ),
    actions: [
      saveButton,
      cancelButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
