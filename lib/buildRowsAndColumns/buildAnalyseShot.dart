import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class BuildRow extends StatefulWidget {
  final String check;
  final List l;
  const BuildRow({required this.check, required this.l});

  @override
  State<BuildRow> createState() => _BuildRowState();
}

class _BuildRowState extends State<BuildRow> {
  late final String intCheck;
  @override
  Widget build(BuildContext context) {
    if (widget.check == "OverView") {
      return DataTable2(
        border: TableBorder.all(color: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) return Colors.blue;
          return Color(0xffb0bec5);
        })),
        headingRowColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) return Colors.blue;
          return Colors.indigo.shade50;
        }),
        columns: [
          DataColumn2(
            label: Text(""),
          ),
          DataColumn2(
              label: Text(
                "Game\n1",
                style: TextStyle(fontSize: 13),
              ),
              size: ColumnSize.L),
          DataColumn2(
              label: Text(
                "Game\n2",
                style: TextStyle(fontSize: 13),
              ),
              size: ColumnSize.L),
          DataColumn2(
            label: Text(
              "Game\n3",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
        rows: [
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Count",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[5]}")),
                DataCell(Text("${widget.l[10]}")),
                DataCell(Text("${widget.l[1]}"))
              ]),
          DataRow2(cells: [
            DataCell(Text(
              "Winner",
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text("${widget.l[4]}")),
            DataCell(Text("${widget.l[8]}")),
            DataCell(Text("${widget.l[2]}"))
          ]),
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Winner %",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[0]}")),
                DataCell(Text("${widget.l[1]}")),
                DataCell(Text("${widget.l[2]}"))
              ]),
          DataRow2(cells: [
            DataCell(Text(
              "Error",
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text("${widget.l[7]}")),
            DataCell(Text("${widget.l[8]}")),
            DataCell(Text("${widget.l[9]}"))
          ]),
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Error%",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[10]}")),
                DataCell(Text("${widget.l[2]}")),
                DataCell(Text("${widget.l[11]}"))
              ]),
        ],
      );
    } else if (widget.check == "Game1") {
      return DataTable2(
        border: TableBorder.all(color: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) return Colors.blue;
          return Color(0xffb0bec5);
        })),
        headingRowColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) return Colors.blue;
          return Colors.indigo.shade50;
        }),
        columns: [
          DataColumn2(
            label: Text(""),
          ),
          DataColumn2(
              label: Text(
                "Game\n1",
                style: TextStyle(fontSize: 13),
              ),
              size: ColumnSize.L),
          DataColumn2(
              label: Text(
                "Game\n2",
                style: TextStyle(fontSize: 13),
              ),
              size: ColumnSize.L),
          DataColumn2(
            label: Text(
              "Game\n3",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
        rows: [
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Count",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[0]}")),
                DataCell(Text("${widget.l[1]}")),
                DataCell(Text("${widget.l[2]}"))
              ]),
          DataRow2(cells: [
            DataCell(Text(
              "Winner",
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text("${widget.l[3]}")),
            DataCell(Text("${widget.l[4]}")),
            DataCell(Text("${widget.l[5]}"))
          ]),
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Winner %",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[0]}")),
                DataCell(Text("${widget.l[1]}")),
                DataCell(Text("${widget.l[2]}"))
              ]),
          DataRow2(cells: [
            DataCell(Text(
              "Error",
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text("${widget.l[7]}")),
            DataCell(Text("${widget.l[8]}")),
            DataCell(Text("${widget.l[9]}"))
          ]),
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Error%",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[10]}")),
                DataCell(Text("${widget.l[2]}")),
                DataCell(Text("${widget.l[11]}"))
              ]),
        ],
      );
    } else if (widget.check == "Game2") {
      return DataTable2(
        border: TableBorder.all(color: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) return Colors.blue;
          return Color(0xffb0bec5);
        })),
        headingRowColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) return Colors.blue;
          return Colors.indigo.shade50;
        }),
        columns: [
          DataColumn2(
            label: Text(""),
          ),
          DataColumn2(
              label: Text(
                "Game\n1",
                style: TextStyle(fontSize: 13),
              ),
              size: ColumnSize.L),
          DataColumn2(
              label: Text(
                "Game\n2",
                style: TextStyle(fontSize: 13),
              ),
              size: ColumnSize.L),
          DataColumn2(
            label: Text(
              "Game\n3",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
        rows: [
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Count",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[2]}")),
                DataCell(Text("${widget.l[4]}")),
                DataCell(Text("${widget.l[8]}"))
              ]),
          DataRow2(cells: [
            DataCell(Text(
              "Winner",
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text("${widget.l[1]}")),
            DataCell(Text("${widget.l[5]}")),
            DataCell(Text("${widget.l[10]}"))
          ]),
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Winner %",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[10]}")),
                DataCell(Text("${widget.l[5]}")),
                DataCell(Text("${widget.l[6]}"))
              ]),
          DataRow2(cells: [
            DataCell(Text(
              "Error",
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text("${widget.l[7]}")),
            DataCell(Text("${widget.l[8]}")),
            DataCell(Text("${widget.l[9]}"))
          ]),
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Error%",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[3]}")),
                DataCell(Text("${widget.l[2]}")),
                DataCell(Text("${widget.l[1]}"))
              ]),
        ],
      );
    } else {
      return DataTable2(
        border: TableBorder.all(color: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) return Colors.blue;
          return Color(0xffb0bec5);
        })),
        headingRowColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) return Colors.blue;
          return Colors.indigo.shade50;
        }),
        columns: [
          DataColumn2(
            label: Text(""),
          ),
          DataColumn2(
              label: Text(
                "Game\n1",
                style: TextStyle(fontSize: 13),
              ),
              size: ColumnSize.L),
          DataColumn2(
              label: Text(
                "Game\n2",
                style: TextStyle(fontSize: 13),
              ),
              size: ColumnSize.L),
          DataColumn2(
            label: Text(
              "Game\n3",
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
        rows: [
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Count",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[2]}")),
                DataCell(Text("${widget.l[0]}")),
                DataCell(Text("${widget.l[1]}"))
              ]),
          DataRow2(cells: [
            DataCell(Text(
              "Winner",
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text("${widget.l[8]}")),
            DataCell(Text("${widget.l[7]}")),
            DataCell(Text("${widget.l[4]}"))
          ]),
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Winner %",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[5]}")),
                DataCell(Text("${widget.l[8]}")),
                DataCell(Text("${widget.l[9]}"))
              ]),
          DataRow2(cells: [
            DataCell(Text(
              "Error",
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text("${widget.l[7]}")),
            DataCell(Text("${widget.l[8]}")),
            DataCell(Text("${widget.l[9]}"))
          ]),
          DataRow2(
              color: MaterialStateColor.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) return Colors.blue;
                return Color(0xffb0bec5);
              }),
              cells: [
                DataCell(Text(
                  "Error%",
                  style: TextStyle(fontSize: 12),
                )),
                DataCell(Text("${widget.l[10]}")),
                DataCell(Text("${widget.l[3]}")),
                DataCell(Text("${widget.l[11]}"))
              ]),
        ],
      );
    }
  }
}
