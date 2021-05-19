import 'package:flutter/material.dart';

class Tabelka extends StatelessWidget {
  const Tabelka({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
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
        ]);
  }
}
