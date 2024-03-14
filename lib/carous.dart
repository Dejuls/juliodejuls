import 'package:badges/badges.dart' as julio;
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:juliodejuls/exporT.dart';
import 'package:line_icons/line_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarPol extends StatefulWidget {
  const CarPol({Key? key}) : super(key: key);

  @override
  State<CarPol> createState() => _CarPolState();
}

class _CarPolState extends State<CarPol> {
  int _homeNotificationCounter = 0;
  void Adder() => setState(() {
    _homeNotificationCounter++;
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey[300],
        drawer: Container(
            height: MediaQuery.of(context).size.height * .97,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 10, top: 8, bottom: 10),
            child: SideNavBar()),
        bottomNavigationBar: GNavBar(),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                top: 0,
              ),
              sliver: SliverAppBar(
                // flexibleSpace: FlexibleSpaceBar(
                //   title: Text(
                //     'info',
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold),
                //   ),
                //   background: Image(
                //     image: AssetImage('/assets/images/16.jpg'),
                //     fit: BoxFit.cover,
                //   ),
                // ),
                  floating: true,

                  // expandedHeight: 40,
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color: Color(0xff985a56),
                        fontSize: 40,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold),
                  ),
                  // leading: IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       EvaIcons.menu2Outline,
                  //       size: 30,
                  //     )),
                  actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SIn()));
                        },
                        icon: Icon(
                          LineIcons.user,
                          size: 35,
                          color: Color(0xff985a56),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    julio.Badge(
                      badgeContent: Text(_homeNotificationCounter.toString()),
                      position: julio.BadgePosition.topEnd(top: 6),
                      child: IconButton(
                          onPressed: () {
                            Adder();
                          },
                          icon: Icon(
                            size: 35,
                            LineIcons.bell,
                            color: Color(0xff985a56),
                          )),
                    ),
                    SizedBox(
                      width: 14,
                    )
                  ],
                  centerTitle: true,
                  backgroundColor: Color(0xffe8bab7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      )),
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(50),
                      child: SizedBox(
                        height: 50,
                        child: Text(
                          'Explore',
                          style: TextStyle(
                              fontFamily: 'Anta',
                              color: Color(0xff985a56),
                              fontSize: 20,
                              letterSpacing: 7,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.grey[100],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Search(
                          margin: 4.0,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Getting started',
                              style: TextStyle(
                                inherit: false,
                                fontSize: 30,
                                color: Color(0xff985a56),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            for (int i = 1; i < 4; ++i) Icon(LineIcons.star)
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3, right: 3),
                          padding: EdgeInsets.only(
                              left: 10, top: 8, bottom: 8, right: 3),
                          height: 148,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffead4d3).withOpacity(0.7),
                          ),
                          child: Flexible(
                            child: Text(
                                style: TextStyle(
                                  // fontFamily: 'BodoniModa',
                                    fontSize: 18,
                                    color: Color(0xff985a56),
                                    fontWeight: FontWeight.w100),
                                'De juls is a versatile mobile application designed to\n' +
                                    "Whether you're a seasoned user or new to Dejuls," +
                                    ' our intuitive interface and features that make it easy for you to'),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Features',
                              style: TextStyle(
                                inherit: false,
                                fontSize: 30,
                                color: Color(0xff985a56),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 10, top: 8, bottom: 8, right: 1),
                          margin: EdgeInsets.only(left: 4, right: 4),
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(5, -5),
                                    spreadRadius: 3,
                                    blurRadius: .1),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-5, 5),
                                    spreadRadius: 3,
                                    blurRadius: 0.1),
                              ]),
                          child: Flexible(
                            child: Text(
                                style: TextStyle(
                                  fontSize: 18,
                                  // fontFamily: 'BodoniModa',
                                  fontWeight: FontWeight.w100,
                                ),
                                'Feature 1: Brief description of feature 1 \tand its benefit\n' +
                                    'Feature 2: Brief description of feature 2 and its benefit\n' +
                                    'Feature 3: Brief description of feature 3 and its benefit'),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Why Dejuls?',
                              style: TextStyle(
                                inherit: false,
                                fontSize: 30,
                                color: Color(0xff985a56),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3, right: 3),
                          padding: EdgeInsets.only(
                              left: 10, top: 8, bottom: 8, right: 3),
                          height: 175,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffead4d3).withOpacity(0.7),
                          ),
                          child: Flexible(
                            child: Text(
                                style: TextStyle(
                                  // fontFamily: 'BodoniModa',
                                  fontSize: 18,
                                  color: Color(0xff985a56),
                                  fontWeight: FontWeight.w100,
                                ),
                                'Simplify your [task/activity] with our user-friendly interface' +
                                    ' ' +
                                    'Access a wide range of [resources/tools/information] at your fingertips.\n' +
                                    ' ' +
                                    'Stay organized and productive with our comprehensive features.'),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        // Text(
                        //   'Trending',
                        //   style: TextStyle(
                        //       fontSize: 30,
                        //       color: Color(0xff985a56),
                        //       // backgroundColor: Color(0xffead4d3),
                        //       fontWeight: FontWeight.bold),
                        // ),
                        Container(
                          width: MediaQuery.of(context).size.width - 2,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xffead4d3).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 15),
                          child: Center(
                            child: Text(
                              'Happening now',
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xffa84f48),
                                // decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        AnimatedSmoothIndicator(
                          activeIndex: jid,
                          count: nms.length,
                          effect: ExpandingDotsEffect(
                            activeDotColor: Color(0xff985a56),
                            dotHeight: 10,
                            dotWidth: 10,
                          ),
                        ),
                        Container(
                          height: 330,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // color: const Color(0xffead4d3),
                            // borderRadius: BorderRadius.only(
                            //   topLeft: Radius.circular(20),
                            //   topRight: Radius.circular(20),
                            //)
                          ),
                          child: CarouselSlider.builder(
                              options: CarouselOptions(
                                height: 300, viewportFraction: 1,
                                pauseAutoPlayOnTouch: true,
                                autoPlay: true,
                                reverse: false,
                                enlargeCenterPage: false, padEnds: false,
                                enlargeStrategy:
                                CenterPageEnlargeStrategy.height,
                                autoPlayInterval: Duration(seconds: 8),
                                pageSnapping: false,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    jid = index;
                                  });
                                },
                                // viewportFraction: 1,
                              ),
                              itemCount: nms.length,
                              itemBuilder: (context, index, realIndex) {
                                return Container(
                                  height: 300,
                                  width: 300,
                                  margin: EdgeInsets.symmetric(horizontal: 3),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image(
                                        image: AssetImage(nms[index].imgurl),
                                        height: 300,
                                        width: 300,
                                        fit: BoxFit.cover,
                                      )),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 2,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xffead4d3).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 15),
                          child: Center(
                            child: Text(
                              'New Candidates',
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xffa84f48),
                                // decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ListView.builder(
                              padding: EdgeInsets.all(8),
                              itemCount: nms.length,
                              itemBuilder: (_, index) => Container(
                                margin: EdgeInsets.only(
                                    left: 3, right: 3, bottom: 2),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Color(0xffead4d3).withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ListTile(
                                  leading: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle),
                                    height: 40,
                                    width: 40,
                                    child: Image(
                                      image: AssetImage(nms[index].imgurl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(EvaIcons.heart)),
                                  title: Text(
                                    nms[index].name,
                                    style: TextStyle(fontSize: 21),
                                  ),
                                  subtitle: Text(
                                    'For class president',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              )),
                        ),
                        Text(
                          'Stats',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff985a56),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .4,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )),
                          child: CircleSyncChart(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:badges/badges.dart' as julio;
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:juliodejuls/exporT.dart';
import 'package:line_icons/line_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarPol extends StatefulWidget {
  const CarPol({Key? key}) : super(key: key);

  @override
  State<CarPol> createState() => _CarPolState();
}

class _CarPolState extends State<CarPol> {
  int _homeNotificationCounter = 0;
  void Adder() => setState(() {
    _homeNotificationCounter++;
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey[300],
        drawer: Container(
            height: MediaQuery.of(context).size.height * .97,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 10, top: 8, bottom: 10),
            child: SideNavBar()),
        bottomNavigationBar: GNavBar(),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                top: 0,
              ),
              sliver: SliverAppBar(
                // flexibleSpace: FlexibleSpaceBar(
                //   title: Text(
                //     'info',
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold),
                //   ),
                //   background: Image(
                //     image: AssetImage('/assets/images/16.jpg'),
                //     fit: BoxFit.cover,
                //   ),
                // ),
                  floating: true,

                  // expandedHeight: 40,
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color: Color(0xff985a56),
                        fontSize: 40,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold),
                  ),
                  // leading: IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       EvaIcons.menu2Outline,
                  //       size: 30,
                  //     )),
                  actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SIn()));
                        },
                        icon: Icon(
                          LineIcons.user,
                          size: 35,
                          color: Color(0xff985a56),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    julio.Badge(
                      badgeContent: Text(_homeNotificationCounter.toString()),
                      position: julio.BadgePosition.topEnd(top: 6),
                      child: IconButton(
                          onPressed: () {
                            Adder();
                          },
                          icon: Icon(
                            size: 35,
                            LineIcons.bell,
                            color: Color(0xff985a56),
                          )),
                    ),
                    SizedBox(
                      width: 14,
                    )
                  ],
                  centerTitle: true,
                  backgroundColor: Color(0xffe8bab7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      )),
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(50),
                      child: SizedBox(
                        height: 50,
                        child: Text(
                          'Explore',
                          style: TextStyle(
                              fontFamily: 'Anta',
                              color: Color(0xff985a56),
                              fontSize: 20,
                              letterSpacing: 7,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.grey[100],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Search(
                          margin: 4.0,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Getting started',
                              style: TextStyle(
                                inherit: false,
                                fontSize: 30,
                                color: Color(0xff985a56),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            for (int i = 1; i < 4; ++i) Icon(LineIcons.star)
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3, right: 3),
                          padding: EdgeInsets.only(
                              left: 10, top: 8, bottom: 8, right: 3),
                          height: 148,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffead4d3).withOpacity(0.7),
                          ),
                          child: Flexible(
                            child: Text(
                                style: TextStyle(
                                  // fontFamily: 'BodoniModa',
                                    fontSize: 18,
                                    color: Color(0xff985a56),
                                    fontWeight: FontWeight.w100),
                                'De juls is a versatile mobile application designed to\n' +
                                    "Whether you're a seasoned user or new to Dejuls," +
                                    ' our intuitive interface and features that make it easy for you to'),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Features',
                              style: TextStyle(
                                inherit: false,
                                fontSize: 30,
                                color: Color(0xff985a56),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 10, top: 8, bottom: 8, right: 1),
                          margin: EdgeInsets.only(left: 4, right: 4),
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(5, -5),
                                    spreadRadius: 3,
                                    blurRadius: .1),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-5, 5),
                                    spreadRadius: 3,
                                    blurRadius: 0.1),
                              ]),
                          child: Flexible(
                            child: Text(
                                style: TextStyle(
                                  fontSize: 18,
                                  // fontFamily: 'BodoniModa',
                                  fontWeight: FontWeight.w100,
                                ),
                                'Feature 1: Brief description of feature 1 \tand its benefit\n' +
                                    'Feature 2: Brief description of feature 2 and its benefit\n' +
                                    'Feature 3: Brief description of feature 3 and its benefit'),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Why Dejuls?',
                              style: TextStyle(
                                inherit: false,
                                fontSize: 30,
                                color: Color(0xff985a56),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 3, right: 3),
                          padding: EdgeInsets.only(
                              left: 10, top: 8, bottom: 8, right: 3),
                          height: 175,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffead4d3).withOpacity(0.7),
                          ),
                          child: Flexible(
                            child: Text(
                                style: TextStyle(
                                  // fontFamily: 'BodoniModa',
                                  fontSize: 18,
                                  color: Color(0xff985a56),
                                  fontWeight: FontWeight.w100,
                                ),
                                'Simplify your [task/activity] with our user-friendly interface' +
                                    ' ' +
                                    'Access a wide range of [resources/tools/information] at your fingertips.\n' +
                                    ' ' +
                                    'Stay organized and productive with our comprehensive features.'),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        // Text(
                        //   'Trending',
                        //   style: TextStyle(
                        //       fontSize: 30,
                        //       color: Color(0xff985a56),
                        //       // backgroundColor: Color(0xffead4d3),
                        //       fontWeight: FontWeight.bold),
                        // ),
                        Container(
                          width: MediaQuery.of(context).size.width - 2,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xffead4d3).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 15),
                          child: Center(
                            child: Text(
                              'Happening now',
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xffa84f48),
                                // decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        AnimatedSmoothIndicator(
                          activeIndex: jid,
                          count: nms.length,
                          effect: ExpandingDotsEffect(
                            activeDotColor: Color(0xff985a56),
                            dotHeight: 10,
                            dotWidth: 10,
                          ),
                        ),
                        Container(
                          height: 330,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // color: const Color(0xffead4d3),
                            // borderRadius: BorderRadius.only(
                            //   topLeft: Radius.circular(20),
                            //   topRight: Radius.circular(20),
                            //)
                          ),
                          child: CarouselSlider.builder(
                              options: CarouselOptions(
                                height: 300, viewportFraction: 1,
                                pauseAutoPlayOnTouch: true,
                                autoPlay: true,
                                reverse: false,
                                enlargeCenterPage: false, padEnds: false,
                                enlargeStrategy:
                                CenterPageEnlargeStrategy.height,
                                autoPlayInterval: Duration(seconds: 8),
                                pageSnapping: false,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    jid = index;
                                  });
                                },
                                // viewportFraction: 1,
                              ),
                              itemCount: nms.length,
                              itemBuilder: (context, index, realIndex) {
                                return Container(
                                  height: 300,
                                  width: 300,
                                  margin: EdgeInsets.symmetric(horizontal: 3),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image(
                                        image: AssetImage(nms[index].imgurl),
                                        height: 300,
                                        width: 300,
                                        fit: BoxFit.cover,
                                      )),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 2,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xffead4d3).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 15),
                          child: Center(
                            child: Text(
                              'New Candidates',
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xffa84f48),
                                // decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: ListView.builder(
                              padding: EdgeInsets.all(8),
                              itemCount: nms.length,
                              itemBuilder: (_, index) => Container(
                                margin: EdgeInsets.only(
                                    left: 3, right: 3, bottom: 2),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(5, -5),
                                          spreadRadius: 3,
                                          blurRadius: .1),
                                      BoxShadow(
                                          color: Colors.white,
                                          offset: Offset(-5, 5),
                                          spreadRadius: 3,
                                          blurRadius: 0.1),
                                    ]),
                                child: ListTile(
                                  leading: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle),
                                    height: 40,
                                    width: 40,
                                    child: Image(
                                      image: AssetImage(nms[index].imgurl),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(EvaIcons.heart)),
                                  title: Text(
                                    nms[index].name,
                                    style: TextStyle(fontSize: 21),
                                  ),
                                  subtitle: Text(
                                    'For class president',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              )),
                        ),
                        Text(
                          'Stats',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff985a56),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .4,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )),
                          child: CircleSyncChart(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
