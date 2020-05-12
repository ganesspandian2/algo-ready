import 'package:flutter/material.dart';

class GraphData extends StatelessWidget {
  const GraphData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graph"),
        centerTitle: true,
        backgroundColor: Color(0xFFE74292),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top:10.0,bottom: 10.0),
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(10.0)),
            Container(
                  padding: EdgeInsets.all(20.0),
                  
                  decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                                
                                offset: Offset(4.0, 4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                            BoxShadow(
                                
                                offset: Offset(-4.0, -4.0),
                                blurRadius: 15.0,
                                spreadRadius: 1.0),
                          ]),
                    
                  child: RichText(
                      text: TextSpan(
                        text: 'A ',
                        style: TextStyle(
                          // color: darkThemeEnabled?Colors.white:Colors.black,
                          fontSize: 30.0,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Graph', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' is a non-linear data structure consisting of nodes and edges. The nodes are sometimes also referred to as vertices and the edges are lines or arcs that connect any two nodes in the graph.'),
                        ],
                      ),
                    ),
                ),

                Padding(padding: const EdgeInsets.all(10.0)),

              Image.asset("assets/images/graph.png"),
          ],
        ),
      ),
      
      
    );
  }
}