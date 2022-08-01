import 'package:flutter/material.dart';

class PortDetailTable extends StatelessWidget {
  const PortDetailTable({Key? key, required this.tableData}) : super(key: key);
  final Map<String, String> tableData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: (Colors.grey[300])!,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Table(
        border: TableBorder.symmetric(
          inside: BorderSide(
            width: 1,
            color: (Colors.grey[300])!,
          ),
        ),
        children: _getTableRows(),
      ),
    );
  }

  List<TableRow> _getTableRows() {
    List<TableRow> results = [];
    tableData.forEach((key, value) {
      var t = TableRow(children: [
        TableCell(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(key),
        )),
        TableCell(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(value),
        )),
      ]);
      results.add(t);
    });
    return results;
  }
}
