// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pupchat/style.dart';

class LocationFilter extends StatelessWidget {
  const LocationFilter({Key? key}) : super(key: key);

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
              'Type',
              style: Style.h2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('Any', style: Style.h3PrimaryBold),
                Text('Restaurant', style: Style.h3Black),
                Text('Cafe', style: Style.h3Black),
                Text('Park', style: Style.h3Black),
              ],
            ),
            Text(
              'Unleash',
              style: Style.h2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('Any', style: Style.h3PrimaryBold),
                Text('Allowed', style: Style.h3Black),
                Text('Not allowed', style: Style.h3Black),
              ],
            ),
            Text(
              'Distance (miles)',
              style: Style.h2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('0.5', style: Style.h3PrimaryBold),
                Text('1', style: Style.h3Black),
                Text('2', style: Style.h3Black),
                Text('3+', style: Style.h3Black),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
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
                      "See 3 Dog-friendly Places",
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
            Container()
          ],
        ),
      ),
    );
  }
}
