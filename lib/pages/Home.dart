import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //fontFamily: GoogleFonts.latoTextTheme();
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CleanUp"),
        ),
        drawer: myDrawer(),
        body: Center(),
      ),
    );
  }
}

  //{} are used to give optional
  // @ required means that parameter is essential to give...
  // $ used for string intercolation