import 'dart:collection';
import 'package:AlgoReady/data_structures/binary_tree.dart';
import 'package:AlgoReady/data_structures/graph.dart';
import 'package:AlgoReady/data_structures/heap.dart';
import 'package:AlgoReady/data_structures/linked_list.dart';
import 'package:AlgoReady/data_structures/queue.dart';
import 'package:AlgoReady/data_structures/stack.dart';
import 'package:flutter/material.dart';

class DataStructure extends StatelessWidget {
  const DataStructure({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Merge Sort"),
        centerTitle: true,
        backgroundColor: Color(0xFFE74292),
      ),

      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            ListTile(
              title: Text("Linked List"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> LinkedList())
              ),
            ),

            ListTile(
              title: Text("Queue"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> QueueData()),
              ),
            ),

            ListTile(
              title: Text("Stack"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> StackData())
              ),
            ),

            ListTile(
              title: Text("Binary Tree"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> BinaryTreeData())
              ),
            ),

            ListTile(
              title: Text("Heap"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> HeapData())
              ),
            ),  

            ListTile(
              title: Text("Graph"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> GraphData())
              ),
            ),  
          ],
        ),
      ),
    );
  }
}