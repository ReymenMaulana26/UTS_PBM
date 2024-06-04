import 'package:flutter/material.dart';
import 'package:project_uts/Pages/CartPage.dart';
import 'package:project_uts/Pages/HomePage.dart';
import 'package:project_uts/Pages/ItemPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.grey
      ),
      routes: {
        "/" :(context) => HomePage(),
        "cartPage" :(context) => CartPage(),
        "itemPage" :(context) => ItemPage(),
      },
    );
  }
}
