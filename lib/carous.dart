import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:juliodejuls/exporT.dart';
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
        bottomNavigationBar: Nav(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar.medium(
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'info',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  background: Image(
                    image: AssetImage('/assets/images/16.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                pinned: true,
                expandedHeight: 200,
                title: Text(
                  'info',
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
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(50),
                    child: Container(
                      height: 50,
                      padding: EdgeInsets.only(top: 0),
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: MediaQuery.of(context).size.width * .99,
                      decoration: BoxDecoration(
                          color: Color(0xffead4d3),
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.transparent),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 160,
                            child: Text(
                              'Search',
                              style: TextStyle(fontSize: 27),
                            ),
                          ),
                          Positioned(
                              top: 15,
                              left: 100,
                              child: Icon(Icons.search_rounded, size: 30)),
                        ],
                      ),
                    ))),
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
                    color: Color(0xffead4d3),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        SizedBox(
                          width: 0,
                        ),
                        Text(
                          'Trending',
                          style: TextStyle(
                              fontSize: 40,
                              color: Color(0xff985a56),
                              // backgroundColor: Color(0xffead4d3),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
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
                                enlargeCenterPage: false,
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
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Center(
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
                        AnimatedSmoothIndicator(
                          activeIndex: jid,
                          count: nms.length,
                          effect: ExpandingDotsEffect(
                            activeDotColor: Color(0xff985a56),
                            dotHeight: 10,
                            dotWidth: 10,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
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
