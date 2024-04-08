import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  ChangeNotifierProvider(
      create: (_) => ThemeProvider(), child: const MyApp()),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
        title: 'Flutter Hello World',
        theme: Provider.of<ThemeProvider>(context).themeData,
        home: const SplashScreen()
      //  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
