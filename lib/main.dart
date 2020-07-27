import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

//navigating contains two parts
//1st - ie after some times goes something happens\
//like as soon as internet come back web page appears
//2nd - ie we can navigate to some other pages or what

//this is 1st one in which as soon as application starts
//it shows that it is started in debug console
//and after 5 seconds we call finished function and it shows
//another dialogue which can be useful in building 1st type
//of web page

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material Splash Screen",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();
    debugPrint("Started the Splash Screen");
    Timer(Duration(seconds: 5), finished);
  }

  void finished(){
    debugPrint("Finished----");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Splash \n Screen",
                style: TextStyle(
                    fontFamily: 'title',
                    fontSize: 50.0,
                    color: Colors.yellow[200],
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                width: 15.0,
              ),
              //loading round button
              CircularProgressIndicator(backgroundColor: Colors.yellow),
            ],
          )
        ],
      ),
    );
  }
}
