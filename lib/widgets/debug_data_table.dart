import 'package:flutter/material.dart';

class DebugDataTable extends StatelessWidget {
  final list = new List<int>.generate(50, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: DataTable(
          sortColumnIndex: 1,
          sortAscending: true,
          columns: const <DataColumn>[
            DataColumn(label: Text("Title")),
            DataColumn(label: Text("Number")),
            DataColumn(label: Text("Type")),
            DataColumn(label: Text("test")),
          ],
          rows: list
              .map((item) => DataRow(
                    cells: [
                      DataCell(Text('Title $item')),
                      DataCell(Text('$item')),
                      DataCell(Text(item % 2 == 0 ? 'Even' : 'Odd')),
                      DataCell(Text('test'))
                    ],
                  ))
              .toList()),
    );
  }
}
