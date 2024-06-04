import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_uts/Widgets/appBar.dart';
import 'package:project_uts/Widgets/category.dart';
import 'package:project_uts/Widgets/drawer.dart';
import 'package:project_uts/Widgets/newest_menu.dart';
import 'package:project_uts/Widgets/popular_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // App Bar
          MyAppBar(),

          // Search
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
              ),
              child: Row(
                children: [
                  Icon(CupertinoIcons.search),
                  Container(
                    width: 300,
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search here",
                          border: InputBorder.none,
                        ),
                      ),
                      ),
                  ),
                ],
              ),
              ),
            ),
            ),

            // Category
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              ),

              // Category menu
              MyCategory(),


              // Popular menu
              Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Text(
                "Menu Populer",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              ),
              // Popular menu
              MyPopularMenu(),

               // Newest menu
              Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
              ),
              child: Text(
                "Menu Baru",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              ),
              // Newest menu
              MyNewestMenu(),
        ],
      ),
      drawer: MyDrawer(),
      floatingActionButton: Container(
        decoration: 
          BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ]
            ),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: Icon(
                CupertinoIcons.cart,
                size: 28,
                color: Colors.red,
                ),
                backgroundColor: Colors.white,
              ),
      ),
    );
  }
}