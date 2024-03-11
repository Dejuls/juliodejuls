import 'dart:ui';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';

class LogInState extends StatefulWidget {
  const LogInState({Key? key}) : super(key: key);

  @override
  State<LogInState> createState() => _LogInStateState();
}

class _LogInStateState extends State<LogInState> {
  final _ki = GlobalKey<FormState>();
  final _name_email = TextEditingController();
  final _pass3 = TextEditingController();
  String? _value;
  @override
  void dispose() {
    _name_email.dispose();
    _pass3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body:
      // CustomScrollView(
      //   slivers: [
      //     SliverAppBar.large(
      //       title: Text('Welcome back!!!',
      //           style: TextStyle(
      //             fontSize: 40,
      //             color: Color(0xffa84f48),
      //           )),
      //       actions: [
      //         IconButton(
      //           onPressed: () => Navigator.push(
      //               context, MaterialPageRoute(builder: (context) => CarPol())),
      //           icon: Icon(EvaIcons.moreVerticalOutline),
      //           iconSize: 30,
      //         )
      //       ],
      //       centerTitle: true,
      //       leading: IconButton(
      //         onPressed: () => Navigator.pop(context),
      //         icon: Icon(EvaIcons.menu2Outline),
      //         iconSize: 30,
      //       ),
      //       backgroundColor: Color(0xffead4d3),
      //       shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.only(
      //               bottomRight: Radius.circular(50),
      //               bottomLeft: Radius.circular(50))),
      //       bottom: PreferredSize(
      //           preferredSize: Size.fromHeight(100),
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.symmetric(horizontal: 10),
      //                 decoration: BoxDecoration(
      //                     color: Colors.white,
      //                     borderRadius: BorderRadius.circular(39)),
      //                 //  color: Color(0xffa84f48),
      //                 padding: EdgeInsets.only(bottom: 0, top: 0),
      //                 width: MediaQuery.of(context).size.width,
      //                 height: 100,
      //                 child: Row(
      //                   children: [
      //                     Spacer(),
      //                     ClipOval(child: AvaTar(radias:10)),
      //                     Spacer()
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           )),
      //     ),
      //     SliverToBoxAdapter(
      //       child:
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(1),
                Color(0xffead4d3),
                Colors.white.withOpacity(.7)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              tileMode: TileMode.mirror),
        ),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Welcome back ',
                textScaleFactor: 3,
                style: TextStyle(fontFamily: 'Anta', color: Color(0xffa84f48)),
              ),
              AvaTar(
                radias: 80.0,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Log in to continue !!!',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Color(0xffa84f48),
                    fontWeight: FontWeight.bold),
              ),
              Form(
                  key: _ki,
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color(0xffa84f48),
                                )),
                            height: 45.0,
                            width: MediaQuery.of(context).size.width * .80,
                            child: TextFormField(
                              style:
                              TextStyle(fontSize: 20, color: Colors.blue),
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.done,
                              showCursor: false,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              controller: _name_email,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 10),
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                                label: Text('Enter usename or email'),
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffa84f48),
                                ),
                                enabled: true,
                                floatingLabelBehavior:
                                FloatingLabelBehavior.never,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'enter  name or email';
                                }
                                if (_isemail(value!) && !_isname(value)) {
                                  return 'enter valid name or email';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _value = value;
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 8),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Color(0xffa84f48),
                                )),
                            height: 45.0,
                            width: MediaQuery.of(context).size.width * .80,
                            child: TextFormField(
                              style:
                              TextStyle(fontSize: 20, color: Colors.blue),
                              textAlign: TextAlign.center,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              showCursor: false,
                              obscureText: true,
                              decoration: InputDecoration(
                                contentPadding:
                                EdgeInsets.only(top: 10, bottom: 10),
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                                labelText: 'password',
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffa84f48),
                                ),
                                // hintText:
                                //     'password has to be atleast 8 characters including numbers ,letters and symbols',
                                floatingLabelBehavior:
                                FloatingLabelBehavior.never,
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        style: BorderStyle.none,
                                        color: Colors.transparent)),
                                focusedBorder: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return '\t\t\t\t\t\t\tplease enter password';
                                }
                                final RegExp _pas = RegExp(r'[,./\;'
                                '[]=*-+_()*&^%#@!0-9<>?:"|{}]');
                                if (_pas.hasMatch(value!)) {
                                  return '\t\t\t\t\t\t\tno symbols or numbers';
                                }
                                if (value.length < 8) {
                                  return '\t\t\t\t\t\t\tpassword too short';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 150,
                          child: FloatingActionButton(
                            onPressed: () {
                              if (_ki.currentState!.validate()) {
                                _ki.currentState!.save();
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text('success'),
                                ));
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CarPol(),
                                    ));
                                Opacity(
                                  opacity: 0.4,
                                );
                              }
                            },
                            focusColor: Colors.white,
                            elevation: 6,
                            tooltip: 'new here',
                            backgroundColor: Color(0xffa84f48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              'LogIn',
                              style:
                              TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'forgot password,',
                              style: TextStyle(
                                  fontSize: 19.0,
                                  color: Color(0xffa84f48),
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'tap here >>',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xffa84f48),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'or',
                          style: TextStyle(
                              fontSize: 28.0,
                              color: Color(0xffa84f48),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Continue with',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color(0xffa84f48),
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          padding: EdgeInsets.only(bottom: 10),
                          width: 300,
                          height: 65,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 3,
                                  color: Colors.white,
                                  offset: Offset(5, 5))
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                            color: Color(0xffead4d3),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn())),
                                icon: Icon(
                                  EvaIcons.emailOutline,
                                  size: 30,
                                  color: Color(0xffa84f48),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  EvaIcons.twitterOutline,
                                  size: 30,
                                  color: Color(0xffa84f48),
                                ),
                              ),
                              IconButton(
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CarPol())),
                                icon: Icon(
                                  EvaIcons.githubOutline,
                                  size: 30,
                                  color: Color(0xffa84f48),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
      //),
      //],
      //),
    );
  }
}

bool _isemail(String jus) {
  final meyilo = RegExp(r'^[w\-\.]+@([\w-]+\.)+[\w-]{2-4}');
  return meyilo.hasMatch(jus);
}

bool _isname(String jus) {
  final nemu = RegExp(r'^[a-z A-Z 0-9_]{3-16}+$');
  return nemu.hasMatch(jus);
}
