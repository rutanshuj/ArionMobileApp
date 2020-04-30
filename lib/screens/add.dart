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
  String result = 'Hey There!';
  @override
  void initState(){
    super.initState();
    updateUI();
  }

  Future getData() async {
    var data = await ScanState().scanQR();
    setState(() {
      result = data;
      print(result);
      return result;
    });

  }
  void updateUI() {
    setState(() {
      widgetOptions[0] = Scaffold(
        body: Center(
          child: Text(result),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            getData();
          },
          label: Text('Scan'),
          icon: Icon(Icons.camera_alt),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
    });

  }
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> widgetOptions = <Widget>[
    Scaffold(
      body: Center(
        child: Row(
        ),
      ),

    ),
    Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                child: Text(
                  "Add Sensors",
                  style: TextStyle(
                    fontSize: 30,
                    height: 2,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
            Form(
              child: Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFeceff1),
                        hintText: 'Sensor 1',
                        contentPadding: const EdgeInsets.all(15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(color: Color(0xFFbdbdbd))
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFeceff1),
                        hintText: 'Sensor 2',
                        contentPadding: const EdgeInsets.all(15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(color: Color(0xFFbdbdbd))
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0,),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFeceff1),
                        hintText: 'Sensor 3',
                        contentPadding: const EdgeInsets.all(15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(color: Color(0xFFbdbdbd))
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0,),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFeceff1),
                        hintText: 'Sensor 4',
                        contentPadding: const EdgeInsets.all(15.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(color: Color(0xFFbdbdbd))
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      ),
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
      body: widgetOptions.elementAt(_selectedIndex),
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