import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({ Key? key }) : super(key: key);

  @override
  _GridViewDemoState createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  Widget createContainer(Color color){
    return Container(
      color: color,
      width: 100,
      height: 100
    );
  }

  @override
  Widget build(BuildContext context) {
    final color_containers = [
          createContainer(Colors.red),
          createContainer(Colors.green),
          createContainer(Colors.purple),
          createContainer(Colors.yellowAccent),
          createContainer(Colors.indigoAccent),
          createContainer(Colors.orangeAccent),
          createContainer(Colors.blueGrey),
    ];
    return Container(
      // margin: const EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 6, // Defines number of column in the grid view.
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(color_containers.length, (index) => 
          color_containers[index]
        )
      )
    );
  }
}