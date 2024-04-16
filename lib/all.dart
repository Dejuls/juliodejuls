import 'dart:ui';
import 'package:juliodejuls/sides.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'package:juliodejuls/exporT.dart';
import 'package:provider/provider.dart';

class PolNames {
  final String name;
  final String desc;
  final String imgurl;
  PolNames({
    required this.name,
    required this.desc,
    required this.imgurl,
  });
}

List<PolNames> nms = [
  PolNames(
      name: 'Mrs. Julio',
      desc: 'courageous\nStudious\ngorgeous',
      imgurl: 'assets/images/1.jpg'),
  PolNames(
      name: 'Mr. Juba', desc: 'Studious\n\nFit', imgurl: 'assets/images/2.jpg'),
  PolNames(
      name: 'Ms. Najuma',
      desc: 'Focused\nCaring\nReknown',
      imgurl: 'assets/images/3.jpg'),
  PolNames(
      name: 'Ms. Natalie',
      desc: 'pretty\ngorgeous\nprofound',
      imgurl: 'assets/images/4.jpg'),
  PolNames(
      name: 'Mr. Julio',
      desc: 'Studious\ncourageous\nBlessed',
      imgurl: 'assets/images/5.jpg'),
];
int jid = 0;
int index = nms.length;
bool isTapped = true;
bool isChanged = false;
int _selind = -1;
bool tapu = false;

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Color(0xffa84f48),
      color: Color(0xffead4d3),
      // (0xff9aafd2),
      animationCurve: Curves.decelerate,
      items: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarPol(),
                ));
          },
          icon: Icon(Icons.home),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border_rounded)),
        IconButton(onPressed: () {}, icon: Icon(Icons.search_off_outlined)),
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ));
            },
            icon: Icon(Icons.person_3_outlined)),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.attribution_sharp),
        ),
      ],
    );
  }
}

class NavBar2 extends StatelessWidget {
  const NavBar2({super.key});
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        NavigationDestination(
          icon: IconButton(onPressed: () {}, icon: Icon(LineIcons.home)),
          label: 'label',
        ),
        NavigationDestination(
          icon: IconButton(onPressed: () {}, icon: Icon(LineIcons.heart)),
          label: 'label',
        ),
        NavigationDestination(
          icon: IconButton(onPressed: () {}, icon: Icon(LineIcons.search)),
          label: 'label',
        ),
        NavigationDestination(
          icon: IconButton(onPressed: () {}, icon: Icon(LineIcons.user)),
          label: 'label',
        ),
      ],
    );
  }
}

class GNavBar extends StatefulWidget {
  GNavBar({Key? key}) : super(key: key);

  @override
  State<GNavBar> createState() => _GNavBarState();
}

class _GNavBarState extends State<GNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: GNav(
        gap: 8,
        tabBackgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
        // backgroundColor: const Color(0xffead4d3),
        activeColor: Color(0xff985a56),
        color: Theme.of(context).colorScheme.primary,
        padding: EdgeInsets.all(12),
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            iconSize: 26,
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarPol(),
                  ));
            },
          ),
          GButton(
            icon: LineIcons.heart,
            text: 'favs',
            iconSize: 26,
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          GButton(
            icon: LineIcons.cog,
            text: 'Settings',
            iconSize: 26,
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          GButton(
            icon: LineIcons.comment,
            text: 'User',
            iconSize: 26,
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          GButton(
            icon: Icons.question_mark_rounded,
            text: 'Report',
            iconSize: 26,
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class ConTesTant extends StatefulWidget {
  const ConTesTant({Key? key}) : super(key: key);

  @override
  State<ConTesTant> createState() => _ConTesTantState();
}

class _ConTesTantState extends State<ConTesTant> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: nms.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .6,
                width: 400,
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffd29e9a),
                    width: 3,
                  ),
                ),
                child: Center(
                  child: Stack(children: [
                    Image(
                      image: AssetImage(nms[index].imgurl),
                      fit: BoxFit.cover,
                      width: 399,
                      height: 399,
                      // SizedBox(
                      //   height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 210),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.star,
                              size: 40,
                              color: Colors.white,
                            ),
                            title: Text(
                              nms[index].name,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xfff208a5),
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              nms[index].desc,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w100,
                                color: Colors.white,
                              ),
                              //
                            ),
                            trailing: Icon(Icons.arrow_forward),
                            onTap: () {
                              // Handle tap
                            },
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class AvaTar extends StatefulWidget {
  double? radias;
  double? size;
  AvaTar({super.key, this.radias, this.size});

  @override
  State<AvaTar> createState() => _AvaTarState();
}

class _AvaTarState extends State<AvaTar> {
  Uint8List? _img;
  File? _selimg;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _img != null
            ? CircleAvatar(
          backgroundColor: Color(0xffa84f48).withOpacity(.4),
          backgroundImage: MemoryImage(_img!),
          radius: widget.radias,
        )
            : CircleAvatar(
          backgroundImage: AssetImage('/assets/images/11.jpg'),
          backgroundColor: Color(0xffa84f48).withOpacity(.4),
          radius: widget.radias,
        ),
        Positioned(
          top: 50,
          bottom: -0,
          left: 60,
          child: Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () => ShowOption(context),
              icon: Icon(
                Icons.add_a_photo_outlined,
                size: widget.size,
                color: Color(0xffa84f48),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future _gallery() async {
    final _from = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (_from == null) return;
    setState(() {
      _selimg = File(_from.path);
      _img = File(_from.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  Future _camera() async {
    final _from = await ImagePicker().pickImage(source: ImageSource.camera);
    if (_from == null) return;
    setState(() {
      _selimg = File(_from.path);
      _img = File(_from.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  void ShowOption(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () => _gallery(),
                    icon: Icon(
                      Icons.photo_outlined,
                      size: 40,
                    )),
                IconButton(
                    onPressed: () => _camera(),
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      size: 40,
                    )),
              ],
            ),
          );
        });
  }
}

class SideNavBar extends StatefulWidget {
  const SideNavBar({Key? key}) : super(key: key);

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  Color bef = Colors.white;
  void CambioColor(int index) {
    setState(() {
      _selind = index;
    });
  }

  void signOff() {
    final _checkstate2 = Provider.of<LoggedinOrNot>(context, listen: false);
    _checkstate2.logOff();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      width: 300,
      // width: MediaQuery.of(context).size.width - 40,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width * 72,
                            child: UserAccountsDrawerHeader(
                              margin:
                              EdgeInsets.only(left: 10, right: 10, top: 5),
                              accountName: Text('julio'),
                              accountEmail: Text('data'),
                              currentAccountPicture: ClipRRect(child: AvaTar()),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20),
                                // image: DecorationImage(
                                //     image: AssetImage('assets/images/22.PNG'),
                                //     fit: BoxFit.cover,
                                //     opacity: 0.2)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.transparent),
                      ),
                      height: MediaQuery.of(context).size.height * .7,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              height: 115,
                              padding: EdgeInsets.all(5),
                              // color:
                              //     Theme.of(context).colorScheme.inversePrimary,
                              child: SingleChildScrollView(
                                physics: const NeverScrollableScrollPhysics(),
                                child: Column(
                                  children: [
                                    // Container(
                                    //   width: MediaQuery.of(context).size.width *
                                    //       .72,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     color: _selind == 0
                                    //         ? Color(0xffead4d3)
                                    //         : bef,
                                    //     borderRadius: BorderRadius.circular(15),
                                    //   ),
                                    //   child: ListTile(
                                    //     leading: _selind == 0
                                    //         ? Icon(Icons.favorite_rounded,
                                    //             color: Color(0xff985a56),
                                    //             size: 30)
                                    //         : Icon(
                                    //             Icons.favorite_outline_outlined,
                                    //             color: Color(0xff985a56),
                                    //             size: 25),
                                    //     title: Text(
                                    //       'Favorites',
                                    //       style: TextStyle(
                                    //         fontSize: 23,
                                    //         wordSpacing: 16,
                                    //       ),
                                    //     ),
                                    //     selectedTileColor: Color(0xffead4d3),
                                    //     onTap: () {
                                    //       CambioColor(0);
                                    //       setState(() {
                                    //         tapu = !tapu;
                                    //       });
                                    //     },
                                    //     shape: RoundedRectangleBorder(
                                    //       borderRadius:
                                    //           BorderRadius.circular(15),
                                    //     ),
                                    //   ),
                                    // ),
                                    SideMenuItem(
                                      selno: 0,
                                      word: 'Favorites',
                                      index: 0,
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .72,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: _selind == 1
                                            ? Theme.of(context)
                                            .colorScheme
                                            .error
                                            : Theme.of(context)
                                            .colorScheme
                                            .errorContainer,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: ListTile(
                                        // subtitle: Text('htrfh'),
                                        // isThreeLine: tapu,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                        ),
                                        trailing: Switch(
                                            value: Provider.of<ThemeProvider>(
                                                context)
                                                .themeData ==
                                                darkTheme,
                                            activeColor: Colors.black,
                                            inactiveThumbColor: Colors.blue,
                                            onChanged: (value) {
                                              Provider.of<ThemeProvider>(
                                                  context,
                                                  listen: false)
                                                  .toggleMode();
                                            }),
                                        leading: _selind == 1
                                            ? Icon(Icons.color_lens_rounded,
                                            color: Color(0xff985a56),
                                            size: 30)
                                            : Icon(Icons.color_lens_outlined,
                                            color: Color(0xff985a56),
                                            size: 25),
                                        title: Text(
                                          'Theme',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),

                                        onTap: () {
                                          CambioColor(1);
                                          setState(() {
                                            tapu = !tapu;
                                          });
                                        },
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.transparent,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(color: Colors.transparent),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              height: MediaQuery.of(context).size.height * .275,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.error,
                                  borderRadius: BorderRadius.circular(0)),
                              child: SingleChildScrollView(
                                physics: NeverScrollableScrollPhysics(),
                                child: Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .72,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: _selind == 2
                                            ? Colors.grey[300]
                                            : Colors.grey[300],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: ListTile(
                                          leading: _selind == 2
                                              ? Icon(
                                              Icons.people_outline_rounded,
                                              color: Color(0xff985a56),
                                              size: 30)
                                              : Icon(
                                              Icons.people_outline_outlined,
                                              color: Color(0xff985a56),
                                              size: 25),
                                          title: Text(
                                            'Contestants',
                                            style: TextStyle(
                                              fontSize: 20,
                                              wordSpacing: 16,
                                            ),
                                          ),
                                          onTap: () {
                                            CambioColor(2);
                                            setState(() {
                                              tapu = !tapu;
                                            });
                                          }),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .72,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: _selind == 3
                                            ? Colors.grey[300]
                                            : Colors.grey[300],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: ListTile(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        leading: _selind == 3
                                            ? Icon(
                                            Icons.question_answer_rounded,
                                            color: Color(0xff985a56),
                                            size: 30)
                                            : Icon(
                                            Icons.question_answer_outlined,
                                            color: Color(0xff985a56),
                                            size: 25),
                                        title: Text(
                                          'FAQ',
                                          style: TextStyle(
                                            fontSize: 20,
                                            wordSpacing: 16,
                                          ),
                                        ),
                                        selectedTileColor: Color(0xffead4d3),
                                        onTap: () {
                                          CambioColor(3);
                                          setState(() {
                                            tapu = !tapu;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .72,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: _selind == 4
                                            ? Colors.grey[300]
                                            : Colors.grey[300],
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: ListTile(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(15),
                                          ),
                                          leading: _selind == 4
                                              ? Icon(Icons.feedback_rounded,
                                              color: Color(0xff985a56),
                                              size: 30)
                                              : Icon(Icons.feedback_outlined,
                                              color: Color(0xff985a56),
                                              size: 25),
                                          title: Text(
                                            'Feedback',
                                            style: TextStyle(
                                              fontSize: 20,
                                              wordSpacing: 16,
                                            ),
                                          ),
                                          selectedTileColor: Color(0xffead4d3),
                                          onTap: () {
                                            CambioColor(4);
                                            setState(() {
                                              tapu = !tapu;
                                            });
                                          }),
                                    ),
                                  ],
                                ),
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
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height * .2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inverseSurface,
                  //Colors.grey[300],
                  //     border: Border.all(color: Colors.grey, width: 4)
                  borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(30),
                    // topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .72,
                    height: 50,
                    decoration: BoxDecoration(
                      color: _selind == 5 ? Color(0xffead4d3) : bef,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        leading: _selind == 5
                            ? Icon(LineIcons.cog,
                            color: Color(0xff985a56), size: 30)
                            : Icon(LineIcons.cog,
                            color: Color(0xff985a56), size: 25),
                        title: Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 20,
                            wordSpacing: 16,
                          ),
                        ),
                        tileColor: _selind == 5 ? Color(0xffead4d3) : bef,
                        selectedTileColor: Color(0xffead4d3),
                        onTap: () {
                          CambioColor(5);
                          setState(() {
                            tapu = !tapu;
                          });
                        }),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .72,
                    height: 50,
                    decoration: BoxDecoration(
                      color: _selind == 6 ? Color(0xffead4d3) : bef,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        leading: _selind == 6
                            ? Icon(Icons.exit_to_app_rounded,
                            color: Color(0xff985a56), size: 30)
                            : Icon(Icons.exit_to_app_outlined,
                            color: Color(0xff985a56), size: 25),
                        title: Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 20,
                            wordSpacing: 16,
                          ),
                        ),
                        onTap: () {
                          CambioColor(6);
                          setState(() {
                            tapu = !tapu;
                          });
                          signOff();
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Search extends StatefulWidget {
  double margin;
  Search({Key? key, required this.margin}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(top: 0),
      margin: EdgeInsets.only(
          left: widget.margin, right: widget.margin, top: 6, bottom: 9),
      width: MediaQuery.of(context).size.width - 20,
      decoration: BoxDecoration(
          color: Colors.white60,
          // (0xffead4d3).withOpacity(.4),
          borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        style: TextStyle(fontFamily: 'Anta', color: Colors.blue, fontSize: 25),
        cursorHeight: 21,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          label: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search_rounded,
                size: 30,
                color: Color(0xff985a56),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .2,
              ),
              Text(
                'Search',
                style: TextStyle(
                  fontSize: 27,
                  color: Color(0xff985a56),
                ),
              ),
            ],
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 20, bottom: 5),
        ),
      ),
    );
  }
}

class MyFormField extends StatelessWidget {
  final controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final dynamic prefixIcon;
  dynamic? suffixIcon;
  final obscure;
  final String label;
  final Function(String?)? onSaved;
  MyFormField({
    Key? key,
    required this.label,
    required this.controller,
    this.obscure,
    this.suffixIcon,
    required this.prefixIcon,
    this.onSaved,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(
        //   color: Color(0xffa84f48),
        //   width: 2,
        // ),
      ),
      height: 46,
      width: MediaQuery.of(context).size.width * .80,
      child: TextFormField(
        style: TextStyle(
            fontFamily: 'ShadowsIntoLight',
            fontSize: 20,
            letterSpacing: 4,
            color: Colors.blue),
        textAlign: TextAlign.center,
        textInputAction: TextInputAction.done,
        controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 18, bottom: 11, top: 2),
          prefixIcon: prefixIcon,
          label: Text(
            label,
            overflow: TextOverflow.ellipsis,
          ),
          suffixIcon: suffixIcon,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          enabled: true,
          labelStyle: TextStyle(
            fontSize: 20,
            letterSpacing: 5,
            fontFamily: 'Anta',
            color: Color(0xffa84f48),
            fontWeight: FontWeight.normal,
          ),
        ),
        onChanged: onChanged,
        cursorColor: Color(0xffa84f48),
        cursorHeight: 24.0,
        cursorWidth: 3,
        showCursor: true,
        keyboardType: TextInputType.name,
        validator: validator,
        obscureText: obscure,
      ),
    );
  }
}
