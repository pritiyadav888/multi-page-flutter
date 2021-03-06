import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "LetsStopAids",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[800] ,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                 MaterialButton(
                  color: Colors.blueGrey,
                 
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.indigo[900]),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.blueGrey,
                 
                  onPressed: () {
                    Navigator.pushNamed(context, '/fourth');
                  },
                  child: Text(
                    "About Us",
                    style: TextStyle(color: Colors.indigo[900]),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.blueGrey,
                 
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: Text(
                    "Portfolio",
                    style: TextStyle(color: Colors.indigo[900]),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  color: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/fifth');
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.indigo[900]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Text(
            "LetsStopAids",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.indigo[900], fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Home",
                  style: TextStyle(color: Colors.indigo[900]),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(color: Colors.indigo[900]),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Portfolio",
                  style: TextStyle(color: Colors.indigo[900]),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}