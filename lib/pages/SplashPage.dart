import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freedom_chat_app_ui/pages/OnboardingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> OnboardingPage()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/images/f_icon.png', height: 70, width: 70,),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Loading...', style: TextStyle(color: Colors.grey.shade400, fontSize: 12, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}



