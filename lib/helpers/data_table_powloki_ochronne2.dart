import 'package:flutter/material.dart';
import 'package:giraffe/providers/item.dart';

class TabelkaPowlokiOchronne2 extends StatelessWidget {
  final List<ItemPowlokiOchronne2> itemsPowlokiOchronne2;
  const TabelkaPowlokiOchronne2({Key key, this.itemsPowlokiOchronne2})
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
                  'Materiał',
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
                  '            Gęstość (g/cm3)',
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
                  'ρ(10-8 Ωm)',
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
                  'λ (W/m°C)',
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
                  'α (°C-1)',
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
                  'E(105 MPA)',
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
                  'Temp. Mięknienia',
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
                  'Temp. Topnienia',
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
        rows: itemsPowlokiOchronne2.map((itemsPowlokiOchronne2) {
          return DataRow(
            cells: <DataCell>[
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemsPowlokiOchronne2.material),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemsPowlokiOchronne2.gestosc),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemsPowlokiOchronne2.p),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemsPowlokiOchronne2.lambda),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemsPowlokiOchronne2.hb),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemsPowlokiOchronne2.alfa),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemsPowlokiOchronne2.e),
              ))),
              DataCell(Center(
                  child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(itemsPowlokiOchronne2.tempMieknienia),
              ))),
              DataCell(
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(itemsPowlokiOchronne2.temptopnienia),
                )),
              )
            ],
          );
        }).toList());
  }
}
