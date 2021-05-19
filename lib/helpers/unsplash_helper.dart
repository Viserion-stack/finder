import 'package:giraffe/helpers/model.dart';

List<NotificationSetting> setlistItemsToListView(int value) {
  List<NotificationSetting> listItemsToListView = [];
  switch (value) {
    case 0:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Brązowo-grafitowe'),
          NotificationSetting(
              title: 'Miedziowo-grafitowe z dużą zawartością miedzi'),
        ];
      }
      break;

    case 1:
      {
        listItemsToListView = [
          NotificationSetting(
              title: 'Miedziowo-grafitowe z średnią zawartością miedzi'),
        ];
      }
      break;

    case 2:
      {
        listItemsToListView = [
          NotificationSetting(
              title: 'Miedziowo-grafitowe z małą zawartością miedzi'),
        ];
      }
      break;

    case 3:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Grafitowe'),
          NotificationSetting(title: 'Naturalne grafitowe'),
          NotificationSetting(title: 'Elektrografitowe'),
          NotificationSetting(title: 'Elektrografitowe miękkie'),
        ];
      }
      break;
    case 4:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Węglowo-grafitowe średniej twardości'),
          NotificationSetting(title: 'Elektrografitowe średniej twardości'),
        ];
      }
      break;
    case 5:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Węglowo-grafitowe twarde'),
        ];
      }
      break;
    case 6:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Elektrografitowe twarde'),
        ];
      }
      break;
    case 7:
      {
        listItemsToListView = [
          NotificationSetting(title: 'Wysokooporowe twarde'),
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
