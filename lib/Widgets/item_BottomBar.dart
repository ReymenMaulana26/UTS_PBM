import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyItemBottomBar extends StatelessWidget {
  const MyItemBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Rp. 123.500,-",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      ),
                    ),
              ],
            ),
            ElevatedButton.icon(onPressed: () {}, 
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 15,
                  ),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
            ),
            icon: Icon(CupertinoIcons.cart),
            label: Text(
              "Pesan Sekarang",
              style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}