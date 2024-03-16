import 'dart:html';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:juliodejuls/exporT.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _key = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _email = TextEditingController();
  final _pswd = TextEditingController();
  final _pswd2 = TextEditingController();
  String _pass = '';
  String _conpass = '';
  String? username;
  String? email;

  @override
  void dispose() {
    _username.dispose();
    _email.dispose();
    _pswd.dispose();
    _pswd2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            // gradient: LinearGradient(
            //     colors: [
            //       Colors.white.withOpacity(.9),
            //       Colors.grey.withOpacity(.8),
            //       // Color(0xffead4d3),
            //       Colors.white.withOpacity(.7),
            //     ],
            //     // stops: [],
            //     begin: Alignment.topCenter,
            //     end: Alignment.bottomCenter,
            //     tileMode: TileMode.mirror),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Join us NOW',
                style: TextStyle(
                    fontSize: 30, letterSpacing: 3, fontFamily: 'Anta'),
              ),
              SizedBox(
                height: 10,
              ),

              AvaTar(
                radias: 70,
                size: 35.0,
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .7,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    '\tSign Up Today',
                    style: TextStyle(
                        fontFamily: 'ShadowsIntoLight',
                        fontSize: 30,
                        color: Color(0xffa84f48),
                        letterSpacing: 3,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Form(
                key: _key,
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20),
                            // border: Border.all(
                            //   color: Color(0xffa84f48),
                            //   width: 2,
                            // ),
                          ),
                          height: 44,
                          width: MediaQuery.of(context).size.width * .80,
                          child: TextFormField(
                            style: TextStyle(
                                fontFamily: 'ShadowsIntoLight',
                                fontSize: 20,
                                letterSpacing: 4,
                                color: Colors.blue),
                            textAlign: TextAlign.center,
                            textInputAction: TextInputAction.done,
                            controller: _username,
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.only(left: 18, bottom: 11, top: 2),
                              prefixIcon: Icon(
                                LineIcons.user,
                                size: 23,
                                color: Color(0xffa84f48),
                              ),
                              label: Text('Username'),
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              floatingLabelBehavior:
                              FloatingLabelBehavior.never,
                              enabled: true,
                              labelStyle: TextStyle(
                                fontSize: 22,
                                letterSpacing: 5,
                                fontFamily: 'Anta',
                                color: Color(0xffa84f48),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            onChanged: (value) => setState(() {
                              username = value;
                            }),
                            cursorColor: Color(0xffa84f48),
                            cursorHeight: 24.0,
                            cursorWidth: 3,
                            showCursor: true,
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'enter valid username';
                              }
                              if (_isname(value!)) {
                                return 'Try again';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 44,
                          width: MediaQuery.of(context).size.width * .80,
                          child: TextFormField(
                            style: TextStyle(
                                fontFamily: 'Anta',
                                fontSize: 20,
                                letterSpacing: 4,
                                color: Colors.blue),
                            textAlign: TextAlign.center,
                            controller: _email,
                            onChanged: (value) => setState(
                                  () => email = value,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.only(left: 18, bottom: 11, top: 2),
                              prefixIcon: Icon(
                                LineIcons.envelope,
                                size: 23,
                                color: Color(0xffa84f48),
                              ),
                              label: Text('Email'),
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabled: true,
                              floatingLabelBehavior:
                              FloatingLabelBehavior.never,
                              border: InputBorder.none,
                              labelStyle: TextStyle(
                                fontSize: 22,
                                letterSpacing: 3,
                                fontFamily: 'Anta',
                                color: Color(0xffa84f48),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            cursorColor: Color(0xffa84f48),
                            cursorHeight: 24.0,
                            cursorWidth: 3,
                            showCursor: true,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'enter valid email';
                              }
                              RegExp _isValidEmail =
                              RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                              if (!_isValidEmail.hasMatch(value!)) {
                                return 'invalid email';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 44,
                          width: MediaQuery.of(context).size.width * .80,
                          child: TextFormField(
                            style: TextStyle(
                                fontFamily: 'ShadowsIntoLight',
                                fontSize: 20,
                                letterSpacing: 4,
                                color: Colors.blue),
                            textAlign: TextAlign.center,
                            controller: _pswd,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () => setState(() {
                                  isTapped = !isTapped;
                                }),
                                icon: Icon(
                                  isTapped ? LineIcons.eye : LineIcons.eyeSlash,
                                  color: Color(0xffa84f48),
                                  size: 30,
                                ),
                              ),
                              contentPadding:
                              EdgeInsets.only(left: 18, bottom: 1, top: 8),
                              prefixIcon: Icon(
                                LineIcons.lock,
                                size: 23,
                                color: Color(0xffa84f48),
                              ),
                              label: Text('Password'),
                              hintText:
                              'password must be atleast 8 characters including numbers ,letters and symbols',
                              enabled: true,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              floatingLabelBehavior:
                              FloatingLabelBehavior.never,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              labelStyle: TextStyle(
                                fontSize: 22,
                                letterSpacing: 3,
                                fontFamily: 'Anta',
                                color: Color(0xffa84f48),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            cursorColor: Color(0xffa84f48),
                            cursorHeight: 24.0,
                            cursorWidth: 3,
                            showCursor: true,
                            obscureText: isTapped,
                            onSaved: (value) {
                              setState(() {
                                _pass = value!;
                              });
                            },
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return 'enter valid password';
                              }
                              if (value!.length <= 8) {
                                return 'password must be atleast 8 characters';
                              }
                              RegExp _spechars =
                              RegExp(r'[!@#$+-/:;%^&*(),.?":{}|<>]');
                              if (!_spechars.hasMatch(value)) {
                                return 'password must contain a two character or number';
                              }
                              RegExp _allters = RegExp(r'[a-zA-Z0-9]');
                              int _charcount =
                                  _allters.allMatches(value).length;
                              if (_charcount < 2) {
                                return 'password must contain atleast two characters or numbers';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 44,
                          width: MediaQuery.of(context).size.width * .8,
                          child: TextFormField(
                            style: TextStyle(
                                fontFamily: 'ShadowsIntoLight',
                                fontSize: 20,
                                letterSpacing: 4,
                                color: Colors.blue),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.only(left: 18, bottom: 11, top: 2),

                              prefixIcon: Icon(
                                LineIcons.lockOpen,
                                size: 23,
                                color: Color(0xffa84f48),
                              ),
                              label: Text('Confirm'),
                              enabled: true,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,

                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              floatingLabelBehavior:
                              FloatingLabelBehavior.never,
                              // border: InputBorder.none,
                              labelStyle: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Anta',
                                color: Color(0xffa84f48),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            cursorColor: Color(0xffa84f48),
                            cursorHeight: 24.0,
                            cursorWidth: 3,
                            showCursor: true,
                            onSaved: (value) {
                              setState(() {
                                _conpass = value!;
                              });
                            },
                            obscureText: isTapped,
                            validator: (value) {
                              if (value?.isEmpty ?? true) {
                                return "passwords don't match";
                              }
                              if (value != _pswd.text) {
                                return "passwords don't match";
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _key.currentState!.validate();
                    });
                    if (_key.currentState!.validate()) {
                      _key.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
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
                  elevation: 8.0,
                  tooltip: 'new here',
                  backgroundColor: Color(0xffa84f48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, letterSpacing: 4),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 10),
                padding: EdgeInsets.only(bottom: 10),
                width: 324,
                height: 65,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        color: Colors.white,
                        offset: Offset(5, 5)),
                    BoxShadow(
                        spreadRadius: 3,
                        color: Colors.white,
                        offset: Offset(-5, -5)),
                  ],
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.grey[300],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\tAlready have an account,',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'ShadowsIntoLight',
                          color: Color(0xffa84f48),
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInState())),
                      child: Text(
                        'login >>',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffa84f48),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isname(String jus) {
    final nemu = RegExp(r'^[a-z A-Z0-9_]{3-16}+$');
    return nemu.hasMatch(jus);
  }
}
