import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';
import 'package:line_icons/line_icons.dart';

class ProFile extends StatelessWidget {
  const ProFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0),
              height: MediaQuery.of(context).size.height * .41,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                fit: StackFit.loose,
                children: [
                  Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage(nms[0].imgurl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * .6,
                      height: 122,
                      decoration: BoxDecoration(
                          color: const Color(0xffead4d3).withOpacity(1),
                          boxShadow: [
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(0, 4),
                                blurRadius: 5,
                                spreadRadius: 2),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(-4, 0),
                                blurRadius: 5),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(4, 0),
                                blurRadius: 5),
                            const BoxShadow(
                                color: Colors.white,
                                offset: Offset(0, -4),
                                blurRadius: 7),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Text(
                            nms[0].name,
                            style: const TextStyle(
                                fontSize: 36,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: '\t\t\tfor\n',
                                  style: TextStyle(fontSize: 17),
                                ),
                                TextSpan(
                                  text: 'President',
                                  style:
                                  TextStyle(fontSize: 25, letterSpacing: 5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .44,
                  width: 260,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.white,
                        blurRadius: 1,
                        offset: Offset(4, 4),
                        spreadRadius: 5,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        blurRadius: 1,
                        offset: Offset(-4, -4),
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 260,
                          padding: EdgeInsets.only(top: 7),
                          margin: EdgeInsets.symmetric(vertical: 0),
                          decoration: BoxDecoration(
                            color: Color(0xffead4d3),
                          ),
                          child: Text(
                            '\t\t\t\t\t\tBrief Info',
                            style: TextStyle(
                              fontSize: 22,
                              color: Color(0xff985a56),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '\t\t\t\t\t\tD.O.B:\t',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff985a56),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: '01-01-90\n',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '\t\t\t\t\t\tResidence:\t',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff985a56),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Banda\n',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '\t\t\t\t\t\tEduc:\t',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff985a56),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'BaScCS,MBA\n',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '\t\t\t\t\t\tCareer\t',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff985a56),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Software Engineer\n',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "\t\t\t\t\t\tAcht's:\t",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff985a56),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Developed DLS\n',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '\t\t\t\t\t\tHobbies:\t',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff985a56),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'Skiing,Boardgames\n',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  padding: const EdgeInsets.only(right: 6),
                  height: MediaQuery.of(context).size.height * .4,
                  // padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: const Color(0xffead4d3),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, 0),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(5, 0),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            LineIcons.twitter,
                            color: Colors.lightBlueAccent,
                            size: 36,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            LineIcons.whatSApp,
                            color: Colors.green,
                            size: 36,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            LineIcons.instagram,
                            color: Colors.pinkAccent,
                            size: 36,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            LineIcons.youtube,
                            color: Colors.red,
                            size: 36,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 200,
              child: FloatingActionButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarPol(),
                  ),
                ),
                backgroundColor: const Color(0xff985a56),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                elevation: 10,
                enableFeedback: true,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      LineIcons.undo,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Return',
                      style: TextStyle(fontSize: 20, letterSpacing: 3),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//  Text(
//   " D.O.B:01\01\90\n Location: Banda,KYU\n Education:BaScCS,KYU,MBA,\n ABC2,2018-2020\n Career: Software Engineer\n PM at ABC Inc\n Acht's:Developed popular\n mobile application\n Hobbies:Playing guitar\n Traveling, Reading science\n fiction novels",
//   style: TextStyle(
//     fontSize: 17,
//     decoration: TextDecoration.none,
//     color: Color(0xff985a56),
//   ),
// ),

// veloped popular\n mobile application\n Hobbies:Playing guitar\n Traveling, Reading science\n fiction novels",
//   style: TextStyle(
//     fontSize: 17,
//     decoration: TextDecoration.none,
//     color: Color(0xff985a56),
//   ),
// ),
