import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:animated_text_kit/animated_text_kit.dart';


class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid Portfolio'),
          flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Colors.green,
              Colors.black87
              ])          
         ),        
     ),    
        ),
        body: Center(
          child: Container(
            // height: 200,
            child: CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverGrid.count(
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 4,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Project 1"),
            color: Colors.green[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 2'),
            color: Colors.green[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 3'),
            color: Colors.green[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 4'),
            color: Colors.green[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 5'),
            color: Colors.green[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 6'),
            color: Colors.green[600],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 7'),
            color: Colors.green[700],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 8'),
            color: Colors.green[800],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 9'),
            color: Colors.green[50],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 10'),
            color: Colors.green[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 11'),
            color: Colors.greenAccent[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 12'),
            color: Colors.greenAccent[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Project 13'),
            color: Colors.lightGreen[300],
          ),

          
        ],
      ),
    ),
  ],
),
          ),
        ),
      ),
    );
  }
}