import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';
import 'package:line_icons/line_icons.dart';

class CurvedPageUi extends StatefulWidget {
  const CurvedPageUi({Key? key}) : super(key: key);

  @override
  State<CurvedPageUi> createState() => _CurvedPageUiState();
}

class _CurvedPageUiState extends State<CurvedPageUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 1.99,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.99,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Color(0xffead4d3),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                        ),
                      ),
                      child: Column(
                        textDirection: TextDirection.ltr,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.only(left: 10, top: 15),
                                width: 200,
                                height: MediaQuery.of(context).size.height * .36,
                                decoration: BoxDecoration(
                                  color: Color(0xffead4d3),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image(
                                    image: AssetImage(
                                      nms[0].imgurl,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ProFile(),
                                          )),
                                      icon: Icon(
                                        LineIcons.undo,
                                        size: 36,
                                      )),
                                  Text(
                                    nms[0].name,
                                    style: TextStyle(
                                        fontSize: 32, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Age:',
                                    style: TextStyle(
                                        fontSize: 24, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            'For President',
                            style: TextStyle(fontSize: 42, letterSpacing: 3),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.0089,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Color(0xffead4d3),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.0089,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(70),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .7,
                            margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            width: MediaQuery.of(context).size.width * .89,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
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
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
