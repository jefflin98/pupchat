// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pupchat/location_detail.dart';
import 'package:pupchat/location_filter.dart';
import 'package:pupchat/style.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MyMapScreenState();
}

class _MyMapScreenState extends State<MapScreen> {
  var tapped = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                        top: 16,
                        bottom: 16,
                      ),
                      child: Text(
                        " Search",
                        style: TextStyle(color: Style.greyText, fontSize: 15),
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
                          builder: (_) => LocationFilter(),
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
                  '  3 Dog-friendly Places Nearby',
                  style: TextStyle(
                    color: Style.greyText,
                    fontSize: 14,
                    fontFamily: "Inter",
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  tapped = true;
                });

                showModalBottomSheet(
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  context: context,
                  builder: (_) => LocationDetail(),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/map.png',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                      ),
                      Image.asset("assets/images/cafe.png"),
                      Container(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 120,
                          ),
                          Image.asset(tapped
                              ? "assets/images/cafeSelected.png"
                              : "assets/images/cafe.png"),
                        ],
                      ),
                      Container(
                        height: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset("assets/images/park.png"),
                          Container(
                            width: 30,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
