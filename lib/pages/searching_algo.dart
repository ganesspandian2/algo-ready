import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:AlgoReady/searching_algorithms/binary_search.dart';
import 'package:AlgoReady/searching_algorithms/linear_search.dart';
class search_algo extends StatelessWidget {
  const search_algo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Searching Algorithms"),
        centerTitle: true,
        backgroundColor: Color(0xFFE74292),
      ),

      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            ListTile(
              title: Text("Linear Search"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> LinearSearch())
              ),
            ),

            ListTile(
              title: Text("Binary Search"),
              trailing: Icon(Icons.arrow_right),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context)=> BinarySearch())
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}