import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:giraffe/helpers/data_table_komutator.helper.dart';
import 'package:giraffe/helpers/save_alert.dart';
import 'package:giraffe/providers/item.dart';
import 'package:giraffe/providers/items.dart';
import 'package:giraffe/screens/all_screen.dart';
import 'package:provider/provider.dart';

class PierscienieKomutatoryScreen extends StatefulWidget {
  @override
  _PierscienieKomutatoryScreenState createState() =>
      _PierscienieKomutatoryScreenState();
}

class _PierscienieKomutatoryScreenState
    extends State<PierscienieKomutatoryScreen> {
  String valueChoose = '160°C';
  List<ItemKomutator> selectedtemp = [];
  List<ItemKomutator> fullList = [];
  List<String> listItem = [
    '160°C',
    '180°C',
    '220°C',
    '230°C',
    '250°C',
    '270°C',
    '350°C',
    '600°C',
  ];

  @override
  Widget build(BuildContext context) {
    final komutatorData = Provider.of<Items>(context).itemsKomutator;
    // print(komutatorData);
    return Scaffold(
      
      body: Column(children: [
        Container(
            decoration: BoxDecoration(color: Color(0xFFF6A00C), boxShadow: [
              BoxShadow(
                  blurRadius: 5, offset: Offset(0, 0), color: Colors.grey),
            ]),
            width: double.infinity,
            height: 80,
            child: Row(children: [
              IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Expanded(
                child: Column(children: [
                  WindowTitleBarBox(
                      child: Row(children: [
                    Expanded(child: MoveWindow()),
                    WindowButtons(),
                  ])),
                  Expanded(
                    child: Row(children: [
                      Expanded(
                        child: Text(
                          'Pierścienie i komutatory',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ]),
              )
            ])),
        Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 270),
              child: Center(
                child: Text(
                  'Maksymalna temperatura pracy °C',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF6A00C),
              ),
              onPressed: () {
                setState(() {
                  fullList = [];
                });
              },
              child: Text('Wyczyść tabele'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 80),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF6A00C),
              ),
              onPressed: () {
                saveAlertKomutatory(context, fullList);
              },
              child: Text('Zapisz'),
            ),
          ),
          
        ]),
        SizedBox(height: 50),
        

        //SizedBox(width: 10),

        Container(
          padding: const EdgeInsets.all(30.0),
          child: DropdownButton(
            dropdownColor: Color(0xFFF6A00C),
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
              size: 35,
            ),
            hint: Text(
              '   Wybierz Temperaturę ',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            elevation: 16,
            underline: Container(
              height: 0,
              color: Colors.white,
            ),
            value: valueChoose,
            onChanged: (String value) {
              setState(() {
                valueChoose = value;
                print(valueChoose);
                //print(value);
                selectedtemp = komutatorData
                    .where((prodItem) =>
                        prodItem.tpo == valueChoose.substring(0, 3))
                    .toList();
                print(selectedtemp);
                fullList = new List.from(selectedtemp)..addAll(fullList);

                //notifications = setlistItemsToListView(selectedCategory);
              });
            },
            items: listItem.map((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 14),
                ),
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: TabelkaKomutator(itemskomutator: fullList),
            ),
          ),
        )
      ]),
    );
  }
}
