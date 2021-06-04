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
        backgroundColor: Color(0xFFF6A00C),
        //title: Text('MATERIAŁY STOSOWANE NA STYKI NIEROZŁĄCZNE'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                  padding: const EdgeInsets.all(30.0),
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
              SizedBox(width: 50,),
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
                    Navigator.of(context).pop();
                  },
                  child: Center(
                      child: Text(
                    'MENU GŁÓWNE',
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
              SizedBox(width: 100,),
            ],
          ),
        ],
      ),
    );
  }
}
