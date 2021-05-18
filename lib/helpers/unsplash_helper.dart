import 'package:giraffe/helpers/model.dart';

List<NotificationSetting> setlistItemsToListView(int value) {
  List<NotificationSetting> listItemsToListView = [];
  switch (value) {
    case 0:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Grafitowe'),
          NotificationSetting(title: 'Elektrografitowe'),
        ];
      }
      break;

    case 1:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Grafitowe'),
        ];
      }
      break;

    case 2:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Grafitowe'),
        ];
      }
      break;

    case 3:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Grafitowe'),
          NotificationSetting(title: 'Elektrografitowe'),
          NotificationSetting(title: 'Elektrografitowe miękkie'),
          NotificationSetting(title: 'Naturanle grafitowe'),
        ];
      }
      break;
    case 4:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Grafitowe'),
          NotificationSetting(title: 'Elektrografitowe'),
        ];
      }
      break;
    case 5:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Grafitowe'),
        ];
      }
      break;
    case 6:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Grafitowe'),
        ];
      }
      break;
    case 7:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Grafitowe'),
        ];
      }
      break;

    default:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Grafitowe'),
          NotificationSetting(title: 'Elektrografitowe'),
        ];
      }
      break;
  }
  return listItemsToListView;
}
