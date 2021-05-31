import 'package:flutter/material.dart';
import 'package:giraffe/screens/powloki_ochronne_screen.dart';

class NierozlacznyScreen extends StatefulWidget {
  NierozlacznyScreen({Key key}) : super(key: key);

  @override
  _NierozlacznyScreenState createState() => _NierozlacznyScreenState();
}

class _NierozlacznyScreenState extends State<NierozlacznyScreen> {
  String valueChoose = 'Aluminium';
  List<String> listItem = [
    'Aluminium',
    'Miedź',
    '220°C',
    '230°C',
    '250°C',
    '270°C',
    '350°C',
    '600°C',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MATERIAŁY STOSOWANE NA STYKI NIEROZŁĄCZNE'),
      ),
      body: Column(
        children: [
          Text('MATERIAŁY STOSOWANE NA STYKI NIEROZŁĄCZNE'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                      // selectedtemp = komutatorData
                      //     .where((prodItem) =>
                      //         prodItem.tpo == valueChoose.substring(0, 3))
                      //     .toList();
                      // print(selectedtemp);

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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PowlokiOchronneScreen()));
                },
                child: Text('POWŁOKI OCHRONNE'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('POWRÓT'),
              ),
            ],
          ),
         
        ],
      ),
    );
  }
}
