import 'package:flutter/material.dart';
import 'package:flutter_application_1/LandingPage/LandingPage.dart';
import 'package:flutter_application_1/Navbar/navbar.dart';
import 'package:flutter_application_1/AboutUsPage/aboutus.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyHomePage(),
      '/second': (context) => AboutUs(),
      // '/third': (context) => ThirdRoute(),
    },
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LetsStopAids',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.4, 0.6, 0.9],
            colors: [
              Colors.yellow,
              Colors.red,
              Colors.white,
              Colors.teal,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 80.0, horizontal: 80.0),
                child: LandingPage(),
              ),
              // ElevatedButton(
              //   child: Text('Click Me!'),
              //   onPressed: () {
              //     Navigator.pushNamed(context, '/second');
              //   },
              // ),
              // ElevatedButton(
              //   child: Text('Tap Me!'),
              //   onPressed: () {
              //     Navigator.pushNamed(context, '/third');
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Click Me Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back!'),
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tap Me Page"),
        backgroundColor: Colors.green,
      ),
    );
  }
}
