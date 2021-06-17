import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import '../helpers/data_table_helper.dart';
import '../helpers/save_alert.dart';
import '../helpers/unsplash_helper.dart';
import '../helpers/model.dart';
import '../providers/item.dart';
import '../providers/items.dart';
import 'package:provider/provider.dart';

class SlizgowyScreen extends StatefulWidget {
  SlizgowyScreen({Key key}) : super(key: key);

  @override
  _SlizgowyScreenState createState() => _SlizgowyScreenState();
}

class _SlizgowyScreenState extends State<SlizgowyScreen> {
  String valueChoose = '6V-10V';
  List<Item> selectedItem = [];
  List<String> listItem = [
    '6V-10V',
    'do 40V',
    'do 80V',
    'do 120V',
    '120V-230V',
    'do 500V',
    'do 1000V',
    '1500V i więcej',
  ];
  bool brazowografitowe = false;
  bool miedziowoGrafitoweZduzaZawartosciaMiedzi = false;
  bool miedziowoGrafitoweZsredniaZawartosciaMiedzi = false;
  bool miedziowoGrafitoweZmalaZawartosciaMiedzi = false;
  bool srebrnoGrafitowe = false;
  bool weglowoGrafitoweSredniejTwardosci = false;
  bool weglowoGrafitoweTwarde = false;
  bool grafitowe = false;
  bool wysokoOporowe = false;
  bool naturanleGrafitowe = false;
  bool elektrografitowe = false;
  bool elektroGrafitowaneMiekkie = false;
  bool elektroGrafitowaneSredniejTwardosci = false;
  bool elektroGrafitowaneTwarde = false;

  List<String> listToListView = [];

  int selectedCategory;
  bool val = false;
  final allowNotifications = NotificationSetting(title: 'Zaznacz Wszystko');
  var notifications = [
    NotificationSetting(title: ''),
    NotificationSetting(title: ''),
    NotificationSetting(title: ''),
    NotificationSetting(title: ''),
    NotificationSetting(title: ''),
    NotificationSetting(title: ''),
    NotificationSetting(title: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFF6A00C),
      //   title: Text('Zestyk nierozłączny ruchomy'),
      //   actions: [
      //     Column(
      //       children: [
      //         WindowTitleBarBox(
      //             child: Row(children: [
      //           Expanded(child: MoveWindow()),
      //           WindowButtons(),
      //         ])),
      //       ],
      //     )
      //   ],
      // ),
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
                  // WindowTitleBarBox(
                  //     child: Row(children: [
                  //   Expanded(child: MoveWindow()),
                  //   WindowButtons(),
                  // ])),
                  Expanded(
                    child: Row(children: [
                      Expanded(
                        child: Text(
                          'Zestyk nierozłączny ruchomy',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedItem = [];
                                  notifications.forEach((notification) {
                                    notification.value = false;
                                    allowNotifications.value = false;
                                  });
                                });
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Wyczyść tabele',
                                    style: TextStyle(
                                      color: Color(0xFFF6A00C),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: GestureDetector(
                              onTap: () {
                                showAlertDialog(context, selectedItem);
                              },
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Zapisz',
                                    style: TextStyle(
                                      color: Color(0xFFF6A00C),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ]),
              )
            ])),
        Expanded(
          child: Row(children: [
            Container(
              width: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 20),
                    child: Text(
                      'Napięcie pracy maszyny:',
                      style: TextStyle(fontSize: 17),
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
                          selectedCategory = listItem.indexOf(value);

                          notifications =
                              setlistItemsToListView(selectedCategory);
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
                  SizedBox(height: 50),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        child: notifications.length >= 6
                            ? SizedBox(
                                height: 1,
                              )
                            : ListView(
                                children: [
                                  //buildToggleCheckbox(allowNotifications),
                                  Divider(),
                                  ...notifications
                                      .map(buildSingleCheckbox)
                                      .toList(),
                                ],
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Tabelka(
                  items: selectedItem,
                ),
              ),
            ))
          ]),
        ),
      ]),
    );
  }

  Widget buildToggleCheckbox(NotificationSetting notification) => buildCheckbox(
      notification: notification,
      onClicked: () {
        final newValue = !notification.value;

        setState(() {
          allowNotifications.value = newValue;
          notifications.forEach((notification) {
            notification.value = newValue;
          });
        });
      });

  Widget buildSingleCheckbox(NotificationSetting notification) => buildCheckbox(
        notification: notification,
        onClicked: () {
          //var itemName = Provider.of<Items>(context, listen: false);
          setState(() {
            switch (notification.title) {
              case 'Brązowo-grafitowe':
                {
                  // var itemName = Provider.of<Items>(context, listen: false).items;
                  brazowografitowe = !brazowografitowe;
                  print(
                      notification.title + ' =' + brazowografitowe.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (brazowografitowe) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!brazowografitowe) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;

              case 'Miedziowo-grafitowe z dużą zawartością miedzi':
                {
                  miedziowoGrafitoweZduzaZawartosciaMiedzi =
                      !miedziowoGrafitoweZduzaZawartosciaMiedzi;
                  print(notification.title +
                      ' =' +
                      miedziowoGrafitoweZduzaZawartosciaMiedzi.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (miedziowoGrafitoweZduzaZawartosciaMiedzi) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!miedziowoGrafitoweZduzaZawartosciaMiedzi) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;

              case 'Miedziowo-grafitowe ze średnią zawartością miedzi':
                {
                  miedziowoGrafitoweZsredniaZawartosciaMiedzi =
                      !miedziowoGrafitoweZsredniaZawartosciaMiedzi;
                  print(notification.title +
                      ' =' +
                      miedziowoGrafitoweZsredniaZawartosciaMiedzi.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (miedziowoGrafitoweZsredniaZawartosciaMiedzi) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!miedziowoGrafitoweZsredniaZawartosciaMiedzi) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;
              case 'Miedziowo-grafitowe z małą zawartością miedzi':
                {
                  miedziowoGrafitoweZmalaZawartosciaMiedzi =
                      !miedziowoGrafitoweZmalaZawartosciaMiedzi;
                  print(notification.title +
                      ' =' +
                      miedziowoGrafitoweZmalaZawartosciaMiedzi.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (miedziowoGrafitoweZmalaZawartosciaMiedzi) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!miedziowoGrafitoweZmalaZawartosciaMiedzi) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;
              case 'Węglowo-grafitowe średniej twardości':
                {
                  weglowoGrafitoweSredniejTwardosci =
                      !weglowoGrafitoweSredniejTwardosci;
                  print(notification.title +
                      ' =' +
                      weglowoGrafitoweSredniejTwardosci.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (weglowoGrafitoweSredniejTwardosci) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!weglowoGrafitoweSredniejTwardosci) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;
              case 'Węglowo-grafitowe twarde':
                {
                  weglowoGrafitoweTwarde = !weglowoGrafitoweTwarde;
                  print(notification.title +
                      ' =' +
                      weglowoGrafitoweTwarde.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (weglowoGrafitoweTwarde) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!weglowoGrafitoweTwarde) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;
              case 'Grafitowe':
                {
                  grafitowe = !grafitowe;
                  print(notification.title + ' =' + grafitowe.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (grafitowe) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!grafitowe) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;
              case 'Naturalne grafitowe':
                {
                  naturanleGrafitowe = !naturanleGrafitowe;
                  print(notification.title +
                      ' =' +
                      naturanleGrafitowe.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (naturanleGrafitowe) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!naturanleGrafitowe) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;
              case 'Wysokooporowe (grafit)':
                {
                  wysokoOporowe = !wysokoOporowe;
                  print(notification.title + ' =' + wysokoOporowe.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (wysokoOporowe) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!wysokoOporowe) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;
              case 'Elektrografitowe':
                {
                  elektrografitowe = !elektrografitowe;
                  print(
                      notification.title + ' =' + elektrografitowe.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (elektrografitowe) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!elektrografitowe) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;
              case 'Elektrografitowane miękkie':
                {
                  elektroGrafitowaneMiekkie = !elektroGrafitowaneMiekkie;
                  print(notification.title +
                      ' =' +
                      elektroGrafitowaneMiekkie.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (elektroGrafitowaneMiekkie) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!elektroGrafitowaneMiekkie) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;
              case 'Elektrografitowane średniej twardości':
                {
                  elektroGrafitowaneSredniejTwardosci =
                      !elektroGrafitowaneSredniejTwardosci;
                  print(notification.title +
                      ' =' +
                      elektroGrafitowaneSredniejTwardosci.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (elektroGrafitowaneSredniejTwardosci) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!elektroGrafitowaneSredniejTwardosci) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;
              case 'Elektrografitowane twarde':
                {
                  elektroGrafitowaneTwarde = !elektroGrafitowaneTwarde;
                  print(notification.title +
                      ' =' +
                      elektroGrafitowaneTwarde.toString());
                  Item title = Provider.of<Items>(context, listen: false)
                      .findById(notification.title);
                  if (elektroGrafitowaneTwarde) {
                    selectedItem.add(title);
                    print(selectedItem);
                  }
                  if (!elektroGrafitowaneTwarde) {
                    selectedItem.remove(title);
                    print(selectedItem);
                  }
                }
                break;

              default:
                {}
                break;
            }

            final newValue = !notification.value;
            notification.value = newValue;

            if (!newValue) {
              allowNotifications.value = false;
            } else {
              final allow =
                  notifications.every((notification) => notification.value);
              allowNotifications.value = allow;
            }
          });
        },
      );

  Widget buildCheckbox({
    @required NotificationSetting notification,
    @required VoidCallback onClicked,
  }) =>
      ListTile(
        onTap: onClicked,
        leading: Checkbox(
          value: notification.value,
          onChanged: (value) => onClicked(),
        ),
        title: Text(
          notification.title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      );
}

final buttonColors = WindowButtonColors(
    iconNormal: Color(0xFF805306),
    mouseOver: Color(0xFFF6A00C),
    mouseDown: Color(0xFF805306),
    iconMouseOver: Color(0xFF805306),
    iconMouseDown: Color(0xFFFFD500));

final closeButtonColors = WindowButtonColors(
    mouseOver: Color(0xFFD32F2F),
    mouseDown: Color(0xFFB71C1C),
    iconNormal: Color(0xFF805306),
    iconMouseOver: Colors.white);

class WindowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
