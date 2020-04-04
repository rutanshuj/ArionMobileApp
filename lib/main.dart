import 'package:flutter/material.dart';
import 'screens/signup.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      )
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState()=> new LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this,
        duration: new Duration(milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut
    );
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }


  @override
  Widget build(BuildContext context){
    return new Scaffold(
        backgroundColor: Colors.white,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image(
                  image: new AssetImage("assets/arion-logo.png"),
                  height: _iconAnimation.value * 200,
                  width: _iconAnimation.value * 200,
                ),
                new Form(
                  child: new Theme(
                    data: new ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal,
                        inputDecorationTheme: new InputDecorationTheme(
                            labelStyle: new TextStyle(
                                color: Colors.teal, fontSize: 20.0))),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.only(top: 80.0),
                          ),
                          new MaterialButton(
                            height: 50.0,
                            minWidth: 140.0,
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: new Text("SIGN UP"),
                            onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> SignUp())
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )
    );
  }
}