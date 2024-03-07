import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
        title: 'Flutter Hello World',
        // Application theme data, you can set the colors for the application as
        // you want
        theme: ThemeData(
          // useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        // A widget which will be started on application startup
        home: SignIn()
      //  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
