import 'package:flutter/material.dart';
import 'package:giraffe/helpers/unsplash_helper.dart';
import 'package:giraffe/helpers/model.dart';
import 'package:google_fonts/google_fonts.dart';

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
  bool grafitowe = false;
  bool elektrografitowe = false;
  bool elektroGrafitoweMiekkie = false;
  bool naturanleGrafitowe = false;

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
      appBar: AppBar(
        title: Text('Styk Slizgowy'),
      ),
      body: Row(children: [
        Container(
          width: 260,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 20),
                child: Text(
                  'Napięcie Pracy Maszyny:',
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

                      notifications = setlistItemsToListView(selectedCategory);
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
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: notifications.length >= 6
                        ? SizedBox(
                            height: 1,
                          )
                        : ListView(
                            children: [
                              buildToggleCheckbox(allowNotifications),
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
            child: DataTable(
                showBottomBorder: true,
                dividerThickness: 1,
                columnSpacing: 5,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Numer grupy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 6,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Nazwa grupy szczotek',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Dopuszczalna gęstość prądu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Dopuszczalana Maksymalna predkosc Obrotowa',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Napiecie Przejscia Na Pare Szczotek',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Napiecie Maszyny Dla Ktorej Szczotki Sa Przeznaczone',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Rezystywnosc',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Twardosc',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Wspolczynnik Tarcia Max',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Zuzycie po 50h Pracy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Ciezar Objetosciowy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Flexible(
                      child: Text(
                        'Zawartosc Popiolu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Center(child: Text('Ia'))),
                      DataCell(Center(child: Text('Brązowo-Grafitowe'))),
                      DataCell(Center(child: Text('20'))),
                      DataCell(Center(child: Text('20-25'))),
                      DataCell(Center(child: Text('0.3-0.6'))),
                      DataCell(Center(child: Text('6-10'))),
                      DataCell(Center(child: Text('0.08'))),
                      DataCell(Center(child: Text('0.50'))),
                      DataCell(Center(child: Text('od 10 do 0.15'))),
                      DataCell(Center(child: Text('do 0.30'))),
                      DataCell(Center(child: Text('4.8-6.0'))),
                      DataCell(Center(child: Text('do 1'))),
                    ],
                  ),
                ]),
          ),
        ))
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
          setState(() {
            switch (notification.title) {
              case 'Grafitowe':
                {
                  grafitowe = !grafitowe;
                  print(notification.title + ' =' + grafitowe.toString());
                }
                break;

              case 'Elektrografitowe':
                {
                  elektrografitowe = !elektrografitowe;
                  print(
                      notification.title + ' =' + elektrografitowe.toString());
                }
                break;

              case 'Elektrografitowe miękkie':
                {
                  elektroGrafitoweMiekkie = !elektroGrafitoweMiekkie;
                  print(notification.title +
                      ' =' +
                      elektroGrafitoweMiekkie.toString());
                }
                break;
              case 'Naturanle grafitowe':
                {
                  naturanleGrafitowe = !naturanleGrafitowe;
                  print(notification.title +
                      ' =' +
                      naturanleGrafitowe.toString());
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
