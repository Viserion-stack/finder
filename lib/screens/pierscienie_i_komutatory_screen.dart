import 'package:flutter/material.dart';
import 'package:giraffe/helpers/data_table_komutator.helper.dart';
import 'package:giraffe/providers/item.dart';
import 'package:giraffe/providers/items.dart';
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
      appBar: AppBar(
        title: Text('PIERŚCIENIE I KOMUTATORY'),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 390),
              child: Text(
                'Maksymalna temperatura pracy °C',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Powrót')),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(30.0),
          child: DropdownButton(
            dropdownColor: Colors.blueGrey,
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
            child: TabelkaKomutator(itemskomutator: selectedtemp),
          ),
        ),)
      ]),
    );
  }
}
