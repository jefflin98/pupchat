// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pupchat/style.dart';

class PuppyFilter extends StatelessWidget {
  const PuppyFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 9 / 10,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => {
                    Navigator.pop(context),
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                  ),
                ),
                Text(
                  "Filter",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "RESET",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            Text(
              'Age',
              style: Style.h2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'Any',
                  style: Style.h2_black,
                ),
                Text('0-1', style: Style.h2_black),
                Text('2-3', style: Style.h2_black),
                Text('4-5', style: Style.h2_black),
                Text('6-7', style: Style.h2_black),
                Text('8+', style: Style.h2_black),
              ],
            ),
            Text(
              'Weight (pounds)',
              style: Style.h2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('Any', style: Style.h2_black),
                Text('0-5', style: Style.h2_black),
                Text('6-10', style: Style.h2_black),
                Text('11-15', style: Style.h2_black),
                Text('16-20', style: Style.h2_black),
                Text('20+', style: Style.h2_black),
              ],
            ),
            Text(
              'Gender',
              style: Style.h2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('Any', style: Style.h2_black),
                Text('Male', style: Style.h2_black),
                Text('Female', style: Style.h2_black),
              ],
            ),
            Text(
              'Vaccination Status',
              style: Style.h2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('Any', style: Style.h2_black),
                Text('Fully Vaccinated', style: Style.h2_black),
              ],
            ),
            Text(
              'Spayed/Neutured',
              style: Style.h2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('Any', style: Style.h2_black),
                Text('Spayed/Neutured', style: Style.h2_black),
              ],
            ),
            Text(
              'Distance (miles)',
              style: Style.h2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('0.5', style: Style.h2_black),
                Text('1', style: Style.h2_black),
                Text('2', style: Style.h2_black),
                Text('3+', style: Style.h2_black),
              ],
            ),
            GestureDetector(
              onTap: () => {
                Navigator.pop(context),
              },
              child: Center(
                child: Container(
                  width: 269,
                  height: 49,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Style.primary,
                  ),
                  child: Center(
                    child: Text(
                      "See 2 Puppies",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
