import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';
import 'dart:math';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _controller = ConfettiController();
  bool is_start = false;
  @override
  void initState() {
    super.initState();
    InitialRoute();
  }

  InitialRoute() async {
    await Future.delayed(Duration(seconds: 1), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => CarPol()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 200,
                top: 150,
                child: Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'Lobster',
                    color: Color(0xff985a56),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  if (is_start) {
                    _controller.stop();
                  } else {
                    _controller.play();
                  }
                },
                child: ConfettiWidget(
                  confettiController: _controller,
                  blastDirection: pi / 3,
                  emissionFrequency: 0.03,
                  shouldLoop: false,
                  numberOfParticles: 20,
                  blastDirectionality: BlastDirectionality.explosive,
                  maximumSize: Size(23, 20),
                  child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.transparent),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Image(
                          image: AssetImage('/assets/images/logo5.png'),
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
              ),
              Positioned(
                  top: 450,
                  child: Text(
                    'De Juls',
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'Anta',
                      letterSpacing: 6,
                      color: Color(0xff985a56),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
