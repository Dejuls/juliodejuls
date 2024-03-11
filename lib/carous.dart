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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: SideNavBar(),
        bottomNavigationBar: GNavBar(),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(
                top: 10,
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
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  // leading: IconButton(
                  //     onPressed: () {}, icon: Icon(EvaIcons.menu2Outline)),
                  actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.notifications)),
                    SizedBox(
                      width: 15,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SIn()));
                        },
                        icon: Icon(EvaIcons.personOutline)),
                    SizedBox(
                      width: 10,
                    )
                  ],
                  centerTitle: true,
                  backgroundColor: Color(0xff985a56),
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
                              color: Colors.white,
                              fontSize: 20,letterSpacing: 7,
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
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Search(),
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
                          padding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                          height: 142,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffead4d3),
                          ),
                          child: Flexible(
                            child: Text(
                                style: TextStyle(fontSize: 18),
                                'De juls is a versatile mobile application designed to\n' +
                                    "Whether you're a seasoned user or new to Dejuls," +
                                    'our intuitive interface and powerful features make it easy for you to'),
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
                          height: 100,
                          width: double.maxFinite,
                          child: Flexible(
                            child: Text(
                                style: TextStyle(fontSize: 18),
                                'Feature 1: Brief description of feature 1 and its benefit\n' +
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
                          padding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                          height: 142,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffead4d3),
                          ),
                          child: Flexible(
                            child: Text(
                                style: TextStyle(fontSize: 18),
                                'Simplify your [task/activity] with our user-friendly interface' +
                                    ' ' +
                                    'Access a wide range of [resources/tools/information] at your fingertips.\n' +
                                    ' ' +
                                    'Stay organized and productive with our comprehensive features.'),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Trending',
                          style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff985a56),
                              // backgroundColor: Color(0xffead4d3),
                              fontWeight: FontWeight.bold),
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
                                height: 300,
                                autoPlay: true,
                                reverse: false,
                                enlargeCenterPage: false, padEnds: false,
                                enlargeStrategy:
                                CenterPageEnlargeStrategy.height,
                                autoPlayInterval: Duration(seconds: 5),
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
                          height: 16,
                        ),

                        // SizedBox(
                        //   height: 6,
                        // ),
                        Text(
                          'Stats',
                          style: TextStyle(
                            fontSize: 50,
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
                          //  Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: SingleChildScrollView(
                          //     child: Column(
                          //       mainAxisAlignment: MainAxisAlignment.start,
                          //       crossAxisAlignment: CrossAxisAlignment.center,
                          //       children: [
                          //         Container(
                          //           margin: EdgeInsets.symmetric(
                          //               vertical: 16, horizontal: 5),
                          //           height: 350,
                          //           width: MediaQuery.of(context).size.width,
                          //           decoration: BoxDecoration(
                          //               color: Colors.white,
                          //               borderRadius:
                          //                   BorderRadius.circular(10)),
                          //           child: CircleSyncChart(),
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          // ),
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
