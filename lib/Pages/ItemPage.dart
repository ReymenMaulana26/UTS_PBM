import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project_uts/Widgets/appBar.dart';
import 'package:project_uts/Widgets/item_BottomBar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            MyAppBar(),
            Padding(padding: EdgeInsets.all(16),
            child: Image.asset(
              "images/pizza.jpg",
              height: 300,
              //width: double.infinity,
              //width: 100,
              ),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60, bottom: 10),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal, 
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          itemBuilder: (context, _) => Icon(
                            Icons.star, 
                            color: Colors.yellow,
                          ),
                          onRatingUpdate: (index){},
                        ),
                        Text(
                          "Rp. 123.500,-",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                      ],
                      ),
                      ),

                      Padding(padding: EdgeInsets.only(
                        top: 10, 
                        bottom: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Paperoni Pizza",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Container(
                                width: 90,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: 
                                  BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: 
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(CupertinoIcons.minus,
                                    color: Colors.white,
                                    size: 20,
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                      ),
                                      ),
                                      Icon(CupertinoIcons.plus,
                                    color: Colors.white,
                                    size: 20,
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                        ),

                        Padding(padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "kelezatan tiada tara dari pizaa kami, harga murah terjangkau",
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Time:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.justify,
                              ),

                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Icon(
                                CupertinoIcons.clock,
                                color: Colors.red,
                              ),
                              ),

                              Text(
                              "30 Menit",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.justify,
                              ),
                          ],
                              ),
                                ],
                              ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        ),
        bottomNavigationBar: MyItemBottomBar(),
    );
  }
}