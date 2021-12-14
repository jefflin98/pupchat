// ignore_for_file: prefer_const_constructors
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pupchat/style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var tapped = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/profile_background.png',
                ),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter),
          ),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Edit",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(Icons.share, color: Colors.white)
                  ],
                ),
                Container(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: SizedBox(
                          height: MediaQuery.of(context).size.height / 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'You and Coco Meet!',
                                style: Style.h1Black,
                              ),
                              Image.asset("assets/images/meet.png"),
                              Image.asset("assets/images/coupon.png"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tapped = true;
                              });
                              Navigator.pop(context, 'OK');
                            },
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Style.primary, //(0xfff6f6f6),
                                ),
                                padding: const EdgeInsets.all(
                                  10,
                                ),
                                child: const Text('Collect Coupon',
                                    style: Style.h3White),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/images/happy.png",
                    width: MediaQuery.of(context).size.width * 1 / 2,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                        ),
                        Text(
                          "Happy",
                          style: Style.h1Black,
                        ),
                        Container(
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Male | Golden Retriever  | 26 lbs",
                              style: Style.h3,
                            ),
                            Container(
                              height: 15,
                            ),
                            Text(
                              "2 yrs | Completed | Neutered ",
                              style: Style.h3,
                            ),
                            Container(
                              height: 15,
                            ),
                            Text(
                              "Happy loves to meet other dogs! He’s very friendly!",
                              style: Style.h3Black,
                            ),
                            Container(
                              height: 30,
                            ),
                          ],
                        ),
                        Text(
                          "Marry",
                          style: Style.h1Black,
                        ),
                        Container(
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Female | 32",
                              style: Style.h3,
                            ),
                            Container(
                              height: 15,
                            ),
                            Text(
                              "Hi, I’m Mary! Happy is my first dog and he’s super nice. Welcome to connect!",
                              style: Style.h3,
                            ),
                            Container(
                              height: 15,
                            ),
                            Text(
                              "NYC, NY, 10025",
                              style: Style.h3Black,
                            ),
                            Container(
                              height: 30,
                            ),
                          ],
                        ),
                        Text(
                          "My Coupons",
                          style: Style.h1Black,
                        ),
                        Container(
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            tapped
                                ? Image.asset("assets/images/coupon.png")
                                : Container(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
