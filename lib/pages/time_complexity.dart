import 'package:flutter/material.dart';

class TimeComplexity extends StatelessWidget {
  const TimeComplexity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Complexities"),
        backgroundColor: Color(0xFFE74292),
        centerTitle: true,
      ),

      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10.0),
          child: DataTable(
            columnSpacing: 20.0,
            columns: <DataColumn>[
              DataColumn(label: Text("Algorithms",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25.0))),
              DataColumn(label: Text("Time Complexities",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25.0))),
              
            ], 
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Insertion Sort")),
                  DataCell(Text("O(n**2)")),
                ],
              ),

              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Selection Sort")),
                  DataCell(Text("O(n**2)")),
                ],
              ),

              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Bubble Sort")),
                  DataCell(Text("O(n**2)")),
                ],
              ),

              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Quick Sort")),
                  DataCell(Text("O(n log(n))")),
                ],
              ),

              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Heap Sort")),
                  DataCell(Text("O(n log(n))")),
                ],
              ),
            ],
          ),
        ),
      ),      
    );
  }
}