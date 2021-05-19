import 'package:flutter/material.dart';
import 'package:giraffe/providers/item.dart';
import 'package:giraffe/providers/items.dart';
import 'package:provider/provider.dart';

class Tabelka extends StatelessWidget {
  final List<Item> items;
  const Tabelka({Key key, this.items})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    //final items = Provider.of<Items>(context).items;
    return DataTable(
        showBottomBorder: true,
        dividerThickness: 1,
        columnSpacing: 5,
        columns: const <DataColumn>[
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
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
          ),
        ],
        rows: items.map((item) {
          return DataRow(
            cells: <DataCell>[
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.numerGrupy),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.nazwaGrupySzczotek),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.dopuszczalanaGestoscPradu),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.dopuszczalanaMaksymalnapredkoscObrotowa),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.napieciePrzejsciaNaPareSzczotek),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child:
                    Text(item.napiecieMaszynyDlaKtorejSzczotkiSaPrzeznaczone),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.rezystywnosc),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.twardosc),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.wspolczynnikTarciaMax),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.zuzyciepo50hPracy),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.ciezarObjetosciowy),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.zawartoscPopiolu),
              ))),
            ],
          );
        }).toList());
  }
}
