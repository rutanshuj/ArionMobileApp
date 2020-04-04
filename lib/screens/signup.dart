import 'package:flutter/material.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new SignUpPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      )
    );
  }
}

class SignUpPage extends StatefulWidget{
  @override
  State createState()=> new SignUpPageState();
}

class SignUpPageState extends State<SignUpPage>{

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Form(
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
                      fillColor: Color(0xFFf5f5f5),
                      hintText: 'Auto Generate',
                      contentPadding: const EdgeInsets.all(15.0 ),
                      border: InputBorder.none
                    ),
                  ),
                  SizedBox(height: 100.0,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFf5f5f5),
                      hintText: 'Email ID',
                      contentPadding: const EdgeInsets.all(15.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFe0e0e0)),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      )
                    ),
                  ),
                  SizedBox(height: 100.0,),
                  TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFf5f5f5),
                        hintText: 'Mobile',
                        contentPadding: const EdgeInsets.all(15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFe0e0e0)),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        )
                    ),
                  )
                ],
              ),
            )
          )
        ],
      )
    );
  }
}