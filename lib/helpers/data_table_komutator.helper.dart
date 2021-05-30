import 'package:flutter/material.dart';
import 'package:giraffe/providers/item.dart';
import 'package:giraffe/providers/items.dart';
import 'package:provider/provider.dart';

class TabelkaKomutator extends StatelessWidget {
  final List<ItemKomutator> itemskomutator;
  const TabelkaKomutator({Key key, this.itemskomutator})
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
                  'Materiał γ',
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
                  '            Proporcje',
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
                  'IACS (%)',
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
                  'σ (MPA)',
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
                  'Hb',
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
                  'Ts (°C)',
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
                  'Tpo (°C)',
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
        rows: itemskomutator.map((itemskomutator) {
          return DataRow(
            cells: <DataCell>[
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemskomutator.material),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemskomutator.proporcje),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemskomutator.iacs),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemskomutator.mpa),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemskomutator.hb),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemskomutator.ts),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemskomutator.tpo),
              ))),
            ],
          );
        }).toList());
  }
}
