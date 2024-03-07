import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Nav(),
        body: SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.down,
            padding: EdgeInsets.only(bottom: 8),
            scrollDirection: Axis.vertical,
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffd29e9a),
                // (0xff6a91d2),
                border: Border.all(color: Color(0xff9aafd2), width: 2),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Positioned(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => VotPage())),
                              icon: Icon(
                                Icons.menu,
                                size: 35.0,
                              ),
                            ),
                            Icon(
                              Icons.person_4_outlined,
                              size: 35.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.favorite_border_rounded),
                        Text(
                          'Contestants',
                          style: TextStyle(fontSize: 40),
                        ),
                      ],
                    ),
                    ConTesTant(),
                    //
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
