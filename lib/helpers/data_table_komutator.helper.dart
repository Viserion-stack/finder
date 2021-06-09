import 'package:flutter/material.dart';
import 'package:giraffe/providers/item.dart';

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
        columns: <DataColumn>[
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
                child: RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'IACS ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: '%',
                          style: TextStyle(fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'α ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: 'MPa',
                          style: TextStyle(fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'H',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: 'B',
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'T',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: 's',
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          DataColumn(
            label: Flexible(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'T',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: 'po',
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
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
