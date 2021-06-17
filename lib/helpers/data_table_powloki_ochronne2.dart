import 'package:flutter/material.dart';
import '../providers/item.dart';

class TabelkaPowlokiOchronne2 extends StatelessWidget {
  final List<ItemPowlokiOchronne2> itemsPowlokiOchronne2;
  const TabelkaPowlokiOchronne2({Key key, this.itemsPowlokiOchronne2})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    //final items = Provider.of<Items>(context).items;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
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
                      fontSize: 13,
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
                    '            Gęstość (g/cm\u00B3)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
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
                          text: 'ρ ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        TextSpan(
                            text: '(10\u207B\u2078 Ωm)',
                            style: TextStyle(
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
                          text: 'λ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        TextSpan(
                            text: ' (W/m°C)',
                            style: TextStyle(
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
                          text: 'H',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        TextSpan(
                            text: 'b',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
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
                          text: 'α',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        TextSpan(
                            text: ' (°C\u207B\u00B9)',
                            style: TextStyle(
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
                          text: 'E',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        TextSpan(
                            text: ' (10\u2075 MPa)',
                            style: TextStyle(
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
                  child: Text(
                    'Temp. mięknienia',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
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
                    'Temp. topnienia',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
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
          }).toList()),
    );
  }
}
