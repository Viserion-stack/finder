import 'package:flutter/material.dart';
import 'package:giraffe/helpers/unsplash_helper.dart';

class SlizgowyScreen extends StatefulWidget {
  SlizgowyScreen({Key key}) : super(key: key);

  @override
  _SlizgowyScreenState createState() => _SlizgowyScreenState();
}

class _SlizgowyScreenState extends State<SlizgowyScreen> {
  String valueChoose = '6V-10V';
  List<String> listItem = [
    '6V-10V',
    'do 40V',
    'do 80V',
    'do 120V',
    '120V-230V',
    'do 500V',
    'do 1000V',
    '1500 i więcej',
  ];

  List<String> listToListView = [];

  int selectedCategory;
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Styk Slizgowy'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20),
            child: Text(
              'Napięcie Pracy Maszyny:',
              style: TextStyle(fontSize: 20),
            ),
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
                '   Select category  ',
                style: TextStyle(
                  fontSize: 18,
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
                  selectedCategory = listItem.indexOf(value);

                  listToListView = setlistItemsToListView(selectedCategory);
                });
              },
              items: listItem.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 22),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 50),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                child: ListView.builder(
                  itemCount: listToListView.length,
                  itemBuilder: (context, index) {
                    return Container(
                      //width: MediaQuery.of(context).size.width / 2,
                      child: Card(
                        child: CheckboxListTile(
                          title:
                              Text('${index + 1}.  ${listToListView[index]}'),
                          onChanged: (bool value) {
                            setState(() {
                              val = value;
                            });
                          },
                          value: val,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
