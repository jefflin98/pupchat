// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pupchat/puppy_filter.dart';
import 'package:pupchat/style.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen(this.onItemTapped);

  final Function onItemTapped;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pupchat',
                style: Style.h1,
              ),
              Container(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 2 / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Style.greyBorder, //(0xffe7e7e7),
                        width: 1,
                      ),
                      color: Style.greyBackgroud, //(0xfff6f6f6),
                    ),
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                      ),
                    ),
                  ),
                  Icon(
                    Icons.filter_list_outlined,
                    color: Style.primary,
                  ),
                  GestureDetector(
                    onTap: () => {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        context: context,
                        builder: (_) => PuppyFilter(),
                      ),
                    },
                    child: Text(
                      "Filter",
                      style: TextStyle(
                        color: Style.primary,
                        fontSize: 16,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 15,
              ),
              Text(
                '  2 Puppies Nearby',
                style: TextStyle(
                  color: Style.greyText,
                  fontSize: 14,
                  fontFamily: "Inter",
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/dog1.png',
                                ),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    onItemTapped(2);
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Style.greyOpac, //(0xfff6f6f6),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                        child: Text(
                                      "Contact",
                                      style:
                                          TextStyle(color: Style.primaryDark),
                                    )),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 9 / 10,
                            height: MediaQuery.of(context).size.height / 3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text('Coco', style: Style.h2Black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                                'Cute and energetic, love to play with other dogs',
                                style: Style.h3Black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text('Male | Poodle | 10 pounds',
                                style: Style.h3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/dog2.png',
                                ),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    onItemTapped(2);
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Style.greyOpac, //(0xfff6f6f6),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                        child: Text(
                                      "Contact",
                                      style:
                                          TextStyle(color: Style.primaryDark),
                                    )),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 9 / 10,
                            height: MediaQuery.of(context).size.height / 3,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text('Peanut', style: Style.h2Black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text('Lazy but still love playing',
                                style: Style.h3Black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text('Male | Aussiedoodle | 10 pounds',
                                style: Style.h3),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
