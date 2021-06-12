import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:giraffe/helpers/data_table_powloki_ochronne2.dart';
import 'package:giraffe/helpers/save_alert.dart';
import 'package:giraffe/providers/item.dart';
import 'package:giraffe/providers/items.dart';
import 'package:giraffe/screens/all_screen.dart';
import 'package:giraffe/screens/powloki_ochronne_screen.dart';
import 'package:provider/provider.dart';

class NierozlacznyScreen extends StatefulWidget {
  NierozlacznyScreen({Key key}) : super(key: key);

  @override
  _NierozlacznyScreenState createState() => _NierozlacznyScreenState();
}

class _NierozlacznyScreenState extends State<NierozlacznyScreen> {
  List<ItemPowlokiOchronne2> selectedmaterials = [];
  String valueChoose = 'Aluminium';
  List<String> listItem = [
    'Aluminium',
    'Miedź',
  ];
  @override
  Widget build(BuildContext context) {
    final powlokiOchronne2Data = Provider.of<Items>(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Color(0xFFF6A00C), boxShadow: [
              BoxShadow(
                  blurRadius: 5, offset: Offset(0, 0), color: Colors.grey),
            ]),
            width: double.infinity,
            height: 60,
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
                ]),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 30),
            child: Text(
              'MATERIAŁY STOSOWANE NA STYKI NIEROZŁĄCZNE',
              style: TextStyle(fontSize: 35),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(60.0),
                  child: Center(
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
                          if (selectedmaterials.length < 4) {
                            valueChoose = value;
                            print(valueChoose);
                            var value1 = powlokiOchronne2Data
                                .findByIdItemsPowlokiOchronneByName(
                                    valueChoose);
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
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFF6A00C),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF6A00C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      selectedmaterials = [];
                    });
                  },
                  child: Center(
                      child: Text(
                    'Wyczyść tabele',
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFF6A00C),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF6A00C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PowlokiOchronneScreen()));
                  },
                  child: Center(
                      child: Text(
                    'POWŁOKI OCHRONNE',
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFF6A00C),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF6A00C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {
                    saveAlertNierozlaczne(context, selectedmaterials);
                  },
                  child: Center(
                      child: Text(
                    'Zapisz',
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
              SizedBox(
                width: 100,
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          TabelkaPowlokiOchronne2(
            itemsPowlokiOchronne2: selectedmaterials,
          ),
        ],
      ),
    );
  }
}
