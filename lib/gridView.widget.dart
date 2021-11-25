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
      width: 500,
      height: 500
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
          createContainer(Colors.blue),
          createContainer(Colors.pinkAccent),
    ];
    return Container(
      // margin: const EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 2, // Defines number of column in the grid view.
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        children: List.generate(color_containers.length, (index) => 
          color_containers[index]
        )
      )
    );
  }
}