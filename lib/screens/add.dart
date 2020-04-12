import 'package:flutter/material.dart';
import 'scan.dart';

class Add extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      )
    );
  }
}

class AddPage extends StatefulWidget{
  @override
  State createState()=> AddPageState();
}

class AddPageState extends State<AddPage>{

  @override
  void initState(){
    super.initState();
  }

  String result = "Hey There !";

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> _widgetOptions = <Widget>[
    Scaffold(
      body: Row(
        
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ScanState().scanQR,
        label: Text('Scan'),
        icon: Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
    Text(
      'Index 1: SENSORS',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('DEVICES'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('SENSORS'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}