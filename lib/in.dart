import 'dart:html';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:juliodejuls/exporT.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class SIn extends StatefulWidget {
  const SIn({Key? key}) : super(key: key);

  @override
  State<SIn> createState() => _SignInState();
}

class _SignInState extends State<SIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                    color: Color(0xffa84f48),
                    width: 9,
                    style: BorderStyle.solid),
              ),
            ),

            // (0xffb06b67),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Expanded(
              child: SingleChildScrollView(
                child: Expanded(
                  child: Column(
                    children: [
                      // Spacer(),
                      ClipPath(
                        clipper: Patho(),
                        child: Container(
                          height: 150,
                          color: Color(0xffead4d3),
                          child: WaveWidget(
                            config: CustomConfig(
                              colors: [Color(0xffead4d3), Color(0xffa84f48)],
                              durations: [100000, 100000],
                              heightPercentages: [1, 2],
                            ),
                            size: Size(MediaQuery.of(context).size.width, 40),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.0,
                      ),
                      AvaTar(
                        radias: 80,
                      ),
                      Text('Welcome !!',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xffa84f48),
                            decoration: TextDecoration.none,
                          )),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color(0xffead4d3).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                        child: Text(
                          'Please log in or sign up to continue',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffa84f48),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 150,
                            child: FloatingActionButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LogInState(),
                                    ));
                              },
                              focusColor: Colors.white,
                              elevation: 6,
                              tooltip: 'open account',
                              backgroundColor: Color(0xffa84f48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            child: FloatingActionButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignIn(),
                                    ));
                              },
                              focusColor: Colors.white,
                              elevation: 6,
                              tooltip: 'new here',
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(
                                'SignUp',
                                style: TextStyle(
                                    color: Color(0xffa84f48), fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      IconButton(
                          onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (_) => CarPol())),
                          icon: Icon(
                            Icons.arrow_right_alt_rounded,
                            size: 35,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: 'Please read our',
                                  style: TextStyle(fontSize: 19),
                                ),
                                TextSpan(
                                    text: 'Privacy terms &\n Policies ',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(content: Text('yo')));
                                      },
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 20,
                                      color: Color(0xffa84f48),
                                    )),
                                TextSpan(
                                  text: ' before proceeding',
                                  style: TextStyle(fontSize: 19),
                                )
                              ])),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Patho extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.moveTo(0, 80);
    path.lineTo(0, size.height * 0.8); // Start at the bottom-left corner
    path.quadraticBezierTo(size.width / 4, size.height, size.width / 2,
        size.height * 0.8); // Define the wave shape
    path.quadraticBezierTo(size.width * 3 / 4, size.height * 0.6, size.width,
        size.height * 0.8); // Define the wave shape
    path.lineTo(size.width, 0); // Finish at the bottom-right corner
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // We don't need to recalculate the clip path
  }
}
