import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:animated_text_kit/animated_text_kit.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        
          children: [
            Container(
                height: 300,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50)),
                    color: Colors.redAccent),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        top: 40,
                        left: 10,
                        child: Container(
                          height: 80,
                          width: 700,
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 150,
                        left: 10,
                        child: Container(
                          height: 80,
                          width: 700,
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 170,
                        left: 30,
                        child: Text(
                            "We focus on prevention and knowledge exchange.",
                            style: TextStyle(
                                fontSize: 30.0, color: Colors.teal[900]))),
                    Positioned(
                        top: 60,
                        left: 80,
                        child: Text("We are a youth driven Canadian charity.",
                            style: TextStyle(
                                fontSize: 30.0, color: Colors.teal[900])))
                  ],
                )),
            SizedBox(height: 20),
            Container(
                height: 400,
                child: Stack(
                  children: [
                    Positioned(
                        left: 20,
                        child: Material(
                          child: Container(
                            height: 300,
                            width: width * 0.95,
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              borderRadius: BorderRadius.circular(0.2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey[400]!.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      -20, 20), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                        top: 50,
                        left: 870,
                        child: Card(
                            elevation: 20.0,
                            shadowColor: Colors.amber.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                              height: 250,
                              width: 550,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("images/aboutus.jpeg"),
                                ),
                              ),
                            ))),
                    Positioned(
                      top: 80,
                      left: 50,
                      child: Container(
                        color: Colors.cyan[50],
                        child: SizedBox(
                          width: 250.0,
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'Horizon',
                            ),
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                    '''LetsStopAIDS was founded in 2004, by the then 15-year-old Shamin Mohamed Jr. with a few high school students. They decided to take on a challenge to educate youth in Canada and globally about HIV.'''),
                                TypewriterAnimatedText(
                                    '''Unfortunately, their school principal thought they were up to no good. Despite the lack of support and obstacles along the way, the charity was officially registered, volunteers associated with it grew to over 400, and great coverage has been received from local and international media.'''),
                                TypewriterAnimatedText(
                                    '''Our ability to make an impact with just volunteers has been possible because we have not forgotten our original goal: To inspire young people affected by HIV to take action, within their local communities.'''),
                                
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      
    );
  }
}
