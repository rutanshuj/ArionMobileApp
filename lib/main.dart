import 'package:flutter/material.dart';
import 'screens/signup.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      )
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState()=> LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState(){
    super.initState();
    _iconAnimationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    );
    _iconAnimation = CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.easeOut
    );
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage("assets/arion-logo.png"),
                  height: _iconAnimation.value * 200,
                  width: _iconAnimation.value * 200,
                ),
                Form(
                  child: Theme(
                    data: ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.teal,
                        inputDecorationTheme: InputDecorationTheme(
                            labelStyle: TextStyle(
                                color: Colors.teal, fontSize: 20.0))),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 80.0),
                          ),
                          MaterialButton(
                            height: 50.0,
                            minWidth: 140.0,
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: Text("SIGN UP"),
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