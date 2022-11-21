import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/new_account.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //In variable koi bhi values aa sakti hai, the compailer will decide which type of the data is
    //Most important method => build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //fontFamily: GoogleFonts.latoTextTheme();
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        myRoutes.homeRoute: (context) => const HomePage(),
        myRoutes.loginRoute: (context) => const LoginPage(),
        myRoutes.newAccount: (context) => const NewAccount(),
      },
      //initialRoute: "/home", // this brings user directly to home page
      //routes: {
      //  "/": {context} => LoginPage(),     // new LoginPage() means you are creating an object
      //  "/home": {context} =>  HomePage(),
      // "/login": {context} => LoginPage(),
      //},
    );
  }
}
