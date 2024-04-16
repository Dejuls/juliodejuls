//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:juliodejuls/exporT.dart';
import 'package:provider/provider.dart';
//import 'package:firebase_core/firebase_core.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(
        create: (_) => ThemeProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World', themeMode: ThemeMode.dark,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const SplashScreen(),
      //  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
