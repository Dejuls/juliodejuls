import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:line_icons/line_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'exporT.dart';

class VotPage extends StatefulWidget {
  const VotPage({Key? key}) : super(key: key);

  @override
  State<VotPage> createState() => _VotPageState();
}

class _VotPageState extends State<VotPage> {
  bool _show = true;
  Timer? _state;
  @override
  void initState() {
    _state = Timer.periodic(
        const Duration(milliseconds: 1000),
            (_) => setState(() {
          _show = !_show;
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar2(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              jid = value;
            });
          },
          scrollDirection: Axis.vertical,
          itemCount: nms.length,
          itemBuilder: (_, index) {
            return ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Color(0xff985a56).withOpacity(0.2), BlendMode.color),
              child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(nms[index].imgurl),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(
                      flex: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            iconSize: 50,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(LineIcons.bell)),
                        SizedBox(width: 23),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 190,
                        ),
                        AnimatedSmoothIndicator(
                          activeIndex: jid,
                          count: nms.length,
                          axisDirection: Axis.vertical,
                          effect: ExpandingDotsEffect(
                            dotColor: Colors.white,
                            dotHeight: 15.0,
                            dotWidth: 15.0,
                            paintStyle: PaintingStyle.fill,
                            activeDotColor: Colors.red.shade500,
                          ),
                        ),
                        SizedBox(width: 40)
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding:
                      EdgeInsets.symmetric(horizontal: 19, vertical: 10),
                      height: 60,
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade500,
                              blurRadius: 10,
                              // spreadRadius: 8,
                              offset: Offset(4, 4)),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        nms[index].name,
                        style: TextStyle(
                            letterSpacing: 3,
                            wordSpacing: 3,
                            // background: Paint()..color = Colors.blue,
                            fontFeatures: [
                              FontFeature.characterVariant(8),
                              FontFeature.stylisticSet(8),
                              // FontFeature.enable('liga'),
                            ],
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.w900,
                            decorationStyle: TextDecorationStyle.double,
                            color: Color(0xff985a56),
                            fontSize: 30),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: 135,
                          width: 135,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: GridView.count(
                            crossAxisCount: 2,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 70,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: Colors.white, width: 4),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                      padding: EdgeInsets.only(bottom: 10),
                                      highlightColor: Color(0xff985a56),
                                      onPressed: () {},
                                      icon: Icon(
                                        color: Colors.lightBlueAccent,
                                        size: 40,
                                        LineIcons.checkSquareAlt,
                                      )),
                                ),
                              ),
                              Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(0),
                                  border:
                                  Border.all(color: Colors.white, width: 2),
                                ),
                                child: IconButton.filled(
                                  // splashColor: Colors.white,
                                  // highlightColor: Color(0xff985a56),
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => CarPol(),
                                      ),
                                    ),
                                    icon: Icon(
                                      size: 30,
                                      color: Colors.yellow.shade900,
                                      LineIcons.home,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: IconButton.filled(
                                      splashColor: Colors.white,
                                      highlightColor: Color(0xff985a56),
                                      onPressed: () {},
                                      icon: Icon(
                                        LineIcons.times,
                                        size: 30,
                                        color: Colors.red.shade800,
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 4,
                                    ),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                    padding: EdgeInsets.only(bottom: 10),
                                    splashColor: Colors.white,
                                    highlightColor: Color(0xff985a56),
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AboutThem(),
                                      ),
                                    ),
                                    tooltip: 'More....',
                                    icon: Icon(
                                      FontAwesomeIcons.info,
                                      size: 40,
                                      color: Color(0xff242222),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          height: 135,
                          width: MediaQuery.of(context).size.width * .58,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                            Border.all(color: Color(0xff985a56), width: 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Text(
                                nms[index].desc,
                                style: TextStyle(
                                  letterSpacing: 4,
                                  wordSpacing: 5,
                                  fontFeatures: [
                                    // FontFeature.characterVariant(2),
                                    // FontFeature.stylisticSet(2),
                                    FontFeature.enable('liga'),
                                  ],
                                  fontFamily: 'Robotico',
                                  // fontWeight: FontWeight.w900,

                                  decorationStyle: TextDecorationStyle.double,
                                  color: Color(0xff985a56),
                                  fontSize: 20,
                                ),
                              ),
                              Divider(
                                height: 10,
                                indent: 20,
                                endIndent: 20,
                              ),
                              Text(
                                'Tap i',
                                style: _show
                                    ? TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 5)
                                    : TextStyle(
                                    color: Colors.transparent, fontSize: 0),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    //
                  ],
                ),
              ),
            );
          }),
    );
  }
}

//
