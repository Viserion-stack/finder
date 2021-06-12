import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:giraffe/helpers/data_table_powloki_ochronne.dart';
import 'package:giraffe/helpers/data_table_powloki_ochronne2.dart';
import 'package:giraffe/providers/item.dart';
import 'package:giraffe/providers/items.dart';
import 'package:giraffe/screens/all_screen.dart';
import 'package:giraffe/helpers/save_alert.dart';
import 'package:giraffe/screens/home_screen.dart';
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
    const int b = 0x62;
    return Scaffold(
      
      body: Column(
        children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabelkaPowlokiOchronne(),
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
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF6A00C),
                    ),
                    onPressed: () {
                     saveAlertPowloki(context,selectedmaterials );
                    },
                    child: Text('Zapisz'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF6A00C),
                      ),
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
          SizedBox(height: 20),
          Text(
              'W celu lepszego zabezpieczenia połączenia Al-Cu, należy zastosować smarowanie wazeliną bezkwasową lub innego rodzaju smarem ochronnym.'),
          SizedBox(height: 20),
          TabelkaPowlokiOchronne2(itemsPowlokiOchronne2: selectedmaterials),
          Expanded(child: Container()),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            child: RichText(
              text: TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'ρ ',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                      text: '- rezystywność, ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                    text: 'λ ',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                      text: '- przewodność cieplna, ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                    text: 'H' ,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                    text: 'b ' ,
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10),
                  ),
                  TextSpan(
                      text: '- twardość Brinella, ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                    text: 'α ',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                      text: '- temp. współczynnik rezystancji, ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  TextSpan(
                    text: 'E ',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                      text: '- moduł Yanga',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
