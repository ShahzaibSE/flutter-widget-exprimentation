import 'package:flutter/material.dart';
// Post Card.
import 'postCard.widget.dart';
// Stack demo widget.
import 'stack.widget.dart';
// Grid View Demo.
import 'gridView.widget.dart';
// Tab Bar Demo.
import 'tabBarDemo.widget.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({ Key? key }) : super(key: key);

  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: 
      Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: [
              Tab(text: 'GridView Demo'), 
              Tab(child: Text('Post Card')),
              Tab(child: Text('Stack Demo')),
            ],
          )
        ),
        body: TabBarView(children: [
          GridViewDemo(),
          PostCard(),
          StackDemo()
        ])
      ),
    );
  }
}