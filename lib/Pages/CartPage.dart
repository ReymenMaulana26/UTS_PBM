import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_uts/Widgets/appBar.dart';
import 'package:project_uts/Widgets/chart_bottomBar.dart';
import 'package:project_uts/Widgets/drawer.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyAppBar(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "Pesanan",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),

                  //for(int i=0; i < 10; i++)
                  // Single item
                  Padding(padding: EdgeInsets.symmetric(vertical: 9),
                  child: Container(
                    width: 380,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Container(alignment: Alignment.center,
                        child: Image.asset(
                          "images/burger.jpg",
                          width: 80,
                          height: 150,
                          ),
                          ),
                          Container(
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Normal Burger",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Untuk para penggemar Burger",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Rp. 22.000,-",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 33),
                          child: Container(padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                              color: Colors.white,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                ),
                                Icon(
                                CupertinoIcons.minus,
                              color: Colors.white,
                              ),
                            ],
                          ),
                          ),
                          ),
                      ],
                    ),
                  ),
                  ),
                  // Single item
                  Padding(padding: EdgeInsets.symmetric(vertical: 9),
                  child: Container(
                    width: 380,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        Container(alignment: Alignment.center,
                        child: Image.asset(
                          "images/cola.jpg",
                          width: 80,
                          height: 150,
                          ),
                          ),
                          Container(
                            width: 190,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Coco Cola",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Minuman pendamping makan",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Rp. 8.000,-",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 33),
                          child: Container(padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                              color: Colors.white,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                ),
                                Icon(
                                CupertinoIcons.minus,
                              color: Colors.white,
                              ),
                            ],
                          ),
                          ),
                          ),
                      ],
                    ),
                  ),
                  ),
                  
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30,),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Items:", 
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                ),
                                Text(
                                "2", 
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                ),
                            ],
                          ),
                          ),
                          const Divider(
                            color: Colors.black,
                            height: 10,
                          ),
                          
                          Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sub-Total:", 
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                ),
                                Text(
                                "Rp.30.000", 
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                ),
                            ],
                          ),
                          ),
                          const Divider(
                            color: Colors.black,
                            height: 10,
                            thickness: 0.5,
                          ),

                          Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery:", 
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                ),
                                Text(
                                "Rp. 13.600,-", 
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                ),
                            ],
                          ),
                          ),
                          const Divider(
                            color: Colors.black,
                            height: 10,
                            thickness: 0.1,
                          ),

                          Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total:", 
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                Text(
                                "Rp. 43.600,-", 
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                                ),
                            ],
                          ),
                          ),
                      ],
                    ),
                  ),
                  )
              ],
            ),
            ),
          )
        ],
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: MyCartBottomBar(),
    );
  }
}