import 'dart:ui';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';
import 'package:line_icons/line_icons.dart';

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.grey[200],

          // gradient: LinearGradient(
          //     colors: [
          //       Colors.white.withOpacity(1),
          //       Color(0xffead4d3),
          //       Colors.white.withOpacity(.7)
          //     ],
          //     begin: Alignment.topCenter,
          //     end: Alignment.bottomRight,
          //     tileMode: TileMode.mirror),
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
                style: TextStyle(fontFamily: '', color: Color(0xffa84f48)),
              ),
              AvaTar(
                radias: 70.0,
                size: 35,
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
                            margin: EdgeInsets.symmetric(vertical: 6),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              // border: Border.all(
                              //   color: Color(0xffa84f48),
                              // ),
                            ),
                            height: 45.0,
                            width: MediaQuery.of(context).size.width * .80,
                            child: TextFormField(
                              style:
                              TextStyle(fontSize: 20, color: Colors.blue),
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.done,
                              cursorColor: Color(0xffa84f48),
                              cursorHeight: 24.0,
                              cursorWidth: 3,
                              showCursor: true,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              controller: _name_email,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  LineIcons.envelope,
                                  size: 23,
                                  color: Color(0xffa84f48),
                                ),
                                contentPadding: EdgeInsets.only(
                                    left: 18, bottom: 12, top: 2),
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                                label: Text('Enter usename or email'),
                                labelStyle: TextStyle(
                                  overflow: TextOverflow.visible,
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
                            margin: EdgeInsets.symmetric(vertical: 6),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              // border: Border.all(
                              //   color: Color(0xffa84f48),
                              // ),
                            ),
                            height: 45.0,
                            width: MediaQuery.of(context).size.width * .80,
                            child: TextFormField(
                              style:
                              TextStyle(fontSize: 20, color: Colors.blue),
                              textAlign: TextAlign.center,
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              cursorColor: Color(0xffa84f48),
                              cursorHeight: 24.0,
                              cursorWidth: 3,
                              showCursor: true,
                              obscureText: isTapped,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  LineIcons.lock,
                                  size: 23,
                                  color: Color(0xffa84f48),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () => setState(() {
                                    isTapped = !isTapped;
                                  }),
                                  icon: Icon(
                                    isTapped
                                        ? LineIcons.eye
                                        : LineIcons.eyeSlash,
                                    color: Color(0xffa84f48),
                                    size: 30,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(
                                  left: 18,
                                  bottom: 8,
                                ),
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
                          margin: EdgeInsets.symmetric(vertical: 4),
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
                          margin: EdgeInsets.only(top: 4, bottom: 4),
                          padding: EdgeInsets.only(bottom: 10),
                          width: MediaQuery.of(context).size.width - 34,
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              //BoxShadow(
                              // spreadRadius: 2,
                              // color: Colors.white,
                              // offset: Offset(5, 5)),
                              // BoxShadow(
                              //     spreadRadius: 2,
                              //     color: Colors.white,
                              //     offset: Offset(-5, -5)),
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.white,
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
                        ),
                        SizedBox(
                          height: 4,
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
  final nemu = RegExp(r'^[a-z A-Z0-9_]{3-16}+$');
  return nemu.hasMatch(jus);
}
