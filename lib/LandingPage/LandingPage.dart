import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Get \nInvolved!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0,
                  color: Colors.blueGrey[800]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                '''\nWe’re 100% Volunteer Driven. No matter where you’re from, or how old you are, we would love to have you join our team!
                    
                    LetsStopAIDS was founded on the core principle that, all it takes is one action to make a dream a reality.
                    Today, that vision has expanded to allow over 400 volunteers a meaningful and sustainable opportunity to ignite their leadership skills.

                    What began in 2004 with a small group of high schools, the idea of innovation and engaging community support,
                    has continued to thrive throughout our projects. And we want you to join us in taking that vision forward.
                    
                    Click here to see current volunteer opportunities.
                    Don’t have the time to volunteer, but want to contribute services? Send us a message too ''',
                style: TextStyle(fontSize: 16.0, color: Colors.teal[900]),
              ),
            ),
            MaterialButton(
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Text(
                  "Our Work",
                  style: TextStyle(color: Colors.indigo[900]),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Image.asset("assets/images/images.jpeg",
        width: width,
        // height: 400,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width/2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
