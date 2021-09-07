import 'package:flutter/material.dart';
import 'package:flutter_application_1/GetStartedPage/getstarted.dart';
import 'package:flutter_application_1/HomePage/HomePage.dart';
import 'package:flutter_application_1/LandingPage/LandingPage.dart';
import 'package:flutter_application_1/Navbar/navbar.dart';
import 'package:flutter_application_1/AboutUsPage/aboutus.dart';
import 'package:flutter_application_1/projectspage/projects.dart';
// ignore: unused_import
import 'package:hexcolor/hexcolor.dart';

Future<void> main() async {
  
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyHomePage(),
      '/second': (context) => HomePage(),
      '/third': (context) => PortfolioPage(),
      '/fourth': (context) => AboutUs(),
      '/fifth': (context) => GetStarted(),
    
      
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
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: "Montserrat"),
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
          gradient: RadialGradient(
                  colors: [Colors.white54, Colors.blueGrey,Colors.black38],
                  center: Alignment(0.6, -0.3),
                  focal: Alignment(0.3, -0.1),
                  focalRadius: 1.0,
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
              
              ElevatedButton(
                
                child: Text(
                  'Next!',
                  style: TextStyle(color: Colors.indigo[900]),
  
                  ),
                onPressed: () {
                  Navigator.pushNamed(context, '/fourth');
                },
              ),
             
            ],
          ),
        ),

      ),
      
    );
  
  }
}

// class Next extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Next"),
//         backgroundColor: Colors.green,
//       ),
//     );
//   }
// }