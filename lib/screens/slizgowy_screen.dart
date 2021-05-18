import 'package:flutter/material.dart';
import 'package:giraffe/helpers/unsplash_helper.dart';
import 'package:giraffe/helpers/model.dart';

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

                  notifications = setlistItemsToListView(selectedCategory);
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
                child: notifications.length >= 6
                    ? SizedBox(
                        height: 1,
                      )
                    : ListView(
                        children: [
                          buildToggleCheckbox(allowNotifications),
                          Divider(),
                          ...notifications.map(buildSingleCheckbox).toList(),
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
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
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
}
