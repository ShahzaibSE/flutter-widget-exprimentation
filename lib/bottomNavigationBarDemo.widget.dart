import 'package:flutter/material.dart';
// Post Card.
import 'postCard.widget.dart';
// Stack demo widget.
import 'stack.widget.dart';
// Grid View Demo.
import 'gridView.widget.dart';
// Tab Bar Demo.
import 'tabBarDemo.widget.dart';

class BottomAppBarDemo extends StatefulWidget {
  const BottomAppBarDemo({ Key? key }) : super(key: key);

  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
    var currentTab = 0;
  // Current Tab Widget.
  Widget currentScreen = GridViewDemo();

  // For BottomAppNavigationBar class.
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold
  );

  // static const List<Widget> _widgetOptions = [
  //   GridViewDemo(),
  //   StackDemo(),
  //   PostCard()
  // ];

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(index) {
    setState((){
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   bottomNavigationBar: BottomAppBar(
    //     child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //        children: <Widget>[
    //             MaterialButton(
    //                 minWidth: 50,
    //                 onPressed: () {
    //                   setState(() {
    //                     currentScreen = GridViewDemo();
    //                     currentTab = 0;
    //                   });
    //                 },
    //                 child: Icon(Icons.home,
    //                     color: currentTab == 0 ? Colors.white : Colors.black)),
    //             MaterialButton(
    //                 minWidth: 60,
    //                 onPressed: () {
    //                   setState(() {
    //                     currentScreen = PostCard();
    //                     currentTab = 1;
    //                   });
    //                 },
    //                 child: Icon(Icons.favorite,
    //                     color: currentTab == 1 ? Colors.white : Colors.black)),
    //             MaterialButton(
    //                 minWidth: 60,
    //                 onPressed: () {
    //                   setState(() {
    //                     currentScreen = StackDemo();
    //                     currentTab = 2;
    //                   });
    //                 },
    //                 child: Icon(Icons.search,
    //                     color: currentTab == 2 ? Colors.white : Colors.black)),
    //           ]
    //     ),
    //   ),
    //   body: PageStorage(
    //     bucket: PageStorageBucket(),
    //     child: currentScreen
    //   ),
    // );
        return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(currentTab),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          )
        ],
        currentIndex: currentTab,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
