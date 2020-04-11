import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    int _currentIndex = 0;
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('DEVICES'),
              backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('SENSORS'),
                backgroundColor: Colors.blue
            ),
          ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}