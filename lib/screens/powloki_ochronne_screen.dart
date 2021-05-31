import 'package:flutter/material.dart';
import 'package:giraffe/helpers/data_table_powloki_ochronne.dart';
import 'package:giraffe/helpers/data_table_powloki_ochronne2.dart';
import 'package:giraffe/providers/item.dart';
import 'package:giraffe/providers/items.dart';
import 'package:provider/provider.dart';

class PowlokiOchronneScreen extends StatefulWidget {
  @override
  _PowlokiOchronneScreenState createState() => _PowlokiOchronneScreenState();
}

class _PowlokiOchronneScreenState extends State<PowlokiOchronneScreen> {
  String valueChoose = 'Nikiel';
  List<ItemPowlokiOchronne2> selectedmaterials = [];
  List<String> listItem = [
    'Nikiel',
    'Miedź',
    'Srebro',
    'Cyna',
  ];
  @override
  Widget build(BuildContext context) {
    final powlokiOchronne2Data = Provider.of<Items>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('POWŁOKI OCHRONNE'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabelkaPowlokiOchronne(),
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
                    '   Wybierz Materiał ',
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
                      if (selectedmaterials.length < 4) {
                        valueChoose = value;
                        print(valueChoose);
                        var value1 = powlokiOchronne2Data
                            .findByIdItemsPowlokiOchronneByName(valueChoose);
                        if (selectedmaterials.contains(value1)) {
                          selectedmaterials.remove(value1);
                        } else {
                          selectedmaterials.add(value1);
                        }
                      }
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
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Powrót'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedmaterials = [];
                        });
                      },
                      child: Text('Wyczyść tabele'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          TabelkaPowlokiOchronne2(itemsPowlokiOchronne2: selectedmaterials),
          Expanded(child: Container()),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            child: Text(
              ' ρ - rezystywność, λ - przewodność cieplna, Hb - twardość Brinella, α - temp. współczynnik rezzystancji, E - moduł Yanga',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          )
        ],
      ),
    );
  }
}
