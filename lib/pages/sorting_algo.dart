import 'package:AlgoReady/sorting_algorithms/bubble_sort.dart';
import 'package:AlgoReady/sorting_algorithms/insertion_sort.dart';
import 'package:AlgoReady/sorting_algorithms/merge_sort.dart';
import 'package:AlgoReady/sorting_algorithms/quick_sort.dart';
import 'package:AlgoReady/sorting_algorithms/selection_sort.dart';
import 'package:flutter/material.dart';

class sort_algo extends StatelessWidget {
  const sort_algo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sorting Algorithms"),
        centerTitle: true,
        backgroundColor: Color(0xFFE74292),
      ),

      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            ListTile(
              title: Text("Insertion Sort"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> insert_sort())
              ),
            ),

            ListTile(
              title: Text("Selection Sort"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> select_sort())
              ),
            ),

            ListTile(
              title: Text("Bubble Sort"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> bubble_sort())
              ),
            ),

            ListTile(
              title: Text("Quick Sort"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> QuickSort())
              ),
            ),

            ListTile(
              title: Text("Merge Sort"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> MergeSort())
              ),
            ),
          ],
        ),
      ),
    );
  }
}