// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pupchat/chat_detail_screen.dart';
import 'package:pupchat/style.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 4 / 10,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Puppy Cafe',
              style: Style.h2Black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '4.3',
                  style: Style.h3Black,
                ),
                Image.asset(
                  "assets/images/stars.png",
                  height: 30,
                ),
              ],
            ),
            Text(
              "Open",
              style: TextStyle(color: Colors.green),
            ),
            Text(
              "Dog friendly cafe, walk 3 min",
              style: Style.h3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                Text(
                  'Dog menu',
                  style: Style.h3Black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                Text(
                  'Unleash',
                  style: Style.h3Black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => {
                    Navigator.pop(context),
                  },
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Style.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.navigation,
                            color: Colors.white,
                          ),
                          Container(
                            width: 10,
                          ),
                          Text(
                            "Direction",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatDetailScreen(1),
                        )),
                  },
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 49,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Style.primary,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                          Container(
                            width: 10,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
