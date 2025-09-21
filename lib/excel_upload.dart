import 'dart:io';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '';


class StudentTable extends StatefulWidget {
  @override
  _StudentTableState createState() => _StudentTableState();
}

class _StudentTableState extends State<StudentTable> {
  List<List<dynamic>> students = [];

  Future<void> pickAndReadExcel() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    );

    if (result != null) {
      var file = File(result.files.single.path!);
      var bytes = file.readAsBytesSync();
      var excel = Excel.decodeBytes(bytes);

      List<List<dynamic>> rows = [];

      // Assuming first sheet has students
      for (var table in excel.tables.keys) {
        for (var row in excel.tables[table]!.rows) {
          rows.add(row.map((cell) => cell?.value).toList());
        }
        break; // take only first sheet
      }

      setState(() {
        students = rows;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Excel Student Viewer")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: pickAndReadExcel,
            child: Text("Upload Excel File"),
          ),
          Expanded(
            child: students.isEmpty
                ? Center(child: Text("No data"))
                : SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: students.first
                          .map((header) => DataColumn(label: Text(header.toString())))
                          .toList(),
                      rows: students
                          .skip(1)
                          .map(
                            (row) => DataRow(
                              cells: row
                                  .map((cell) => DataCell(Text(cell.toString())))
                                  .toList(),
                            ),
                          )
                          .toList(),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
