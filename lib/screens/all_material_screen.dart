import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import '../helpers/data_table_powloki_ochronne2.dart';
import '../helpers/save_alert.dart';
import '../providers/item.dart';
import '../providers/items.dart';
import 'package:provider/provider.dart';

import 'all_screen.dart';

class AllMaterialsScreen extends StatefulWidget {
  AllMaterialsScreen({Key key}) : super(key: key);

  @override
  _AllMaterialsScreenState createState() => _AllMaterialsScreenState();
}

class _AllMaterialsScreenState extends State<AllMaterialsScreen> {
  List<ItemPowlokiOchronne2> selectedmaterials = [];
  String valueChoose = 'Aluminium';
  List<String> listItem = [
    'Aluminium',
    'Miedź',
    'Nikiel',
    'Cyna',
    'Srebro',
  ];
  @override
  Widget build(BuildContext context) {
    final allMaterialData = Provider.of<Items>(context);
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
              // Expanded(
              //   child: Column(children: [
              //     WindowTitleBarBox(
              //         child: Row(children: [
              //       Expanded(child: MoveWindow()),
              //       WindowButtons(),
              //     ])),
              //   ]),
              // ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 30),
            child: Text(
              'MATERIAŁY STYKOWE',
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
                          if (selectedmaterials.length < 100) {
                            valueChoose = value;
                            print(valueChoose);
                            var value1 = allMaterialData
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
          Expanded(
                      child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: TabelkaPowlokiOchronne2(
                itemsPowlokiOchronne2: selectedmaterials,
              ),
            ),
          ),
          //Expanded(child: Container()),
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
                    text: 'H',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  TextSpan(
                    text: 'b ',
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
                      text: '- moduł Younga',
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
