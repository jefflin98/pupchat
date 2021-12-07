// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pupchat/puppy_filter.dart';
import 'package:pupchat/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Style.greyBorder, //(0xffe7e7e7),
                        width: 1,
                      ),
                      color: Style.greyBackgroud, //(0xfff6f6f6),
                    ),
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 203,
                      top: 11,
                      bottom: 9,
                    ),
                    child: Text(
                      "Search",
                      style: TextStyle(
                        color: Style.greyText,
                        fontSize: 16,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
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
                '2 Puppies Nearby',
                style: TextStyle(
                  color: Style.greyText,
                  fontSize: 14,
                  fontFamily: "Inter",
                ),
              ),
            ],
          )),
    );
  }
}
