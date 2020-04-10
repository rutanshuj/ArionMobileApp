import 'package:flutter/material.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new SignUpPage(),
        theme: new ThemeData(
            primarySwatch: Colors.blue
        )
    );
  }}

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
          new Container(
              padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  height: 2,
                  fontWeight: FontWeight.bold,
                ),
              )
          ),
          new Form(
            child: Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Name",
                      style: TextStyle(color: Color(0xFF80cbc4), fontSize: 30, height: 2)
                    )
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      hintText: 'Auto Generate',
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
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "Email ID",
                          style: TextStyle(color: Color(0xFF80cbc4), fontSize: 30)
                      )
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
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
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          "Mobile",
                          style: TextStyle(color: Color(0xFF80cbc4), fontSize: 30)
                      )
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
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
                ],
              ),
            )
          )
        ],
      )
    );
  }
}