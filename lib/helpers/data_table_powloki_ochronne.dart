import 'package:flutter/material.dart';
import '../providers/items.dart';
import 'package:provider/provider.dart';

class TabelkaPowlokiOchronne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemsPowlokiOchronne =
        Provider.of<Items>(context).itemsPowlokiOchronne;
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
                  'Lp.',
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
                  'Powłoki ochronne',
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
                  'Wskaźnik oceny',
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
        rows: itemsPowlokiOchronne.map((item) {
          return DataRow(
            cells: <DataCell>[
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.lp),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.powlokiOchronne),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(item.wskaznikOceny),
              ))),
            ],
          );
        }).toList());
  }
}
