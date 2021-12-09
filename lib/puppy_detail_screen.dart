// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pupchat/chat_detail_screen.dart';
import 'package:pupchat/style.dart';

class PuppyDetailScreen extends StatefulWidget {
  const PuppyDetailScreen({Key? key}) : super(key: key);

  @override
  State<PuppyDetailScreen> createState() => _PuppyDetailScreenState();
}

class _PuppyDetailScreenState extends State<PuppyDetailScreen> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () => {
                        Navigator.pop(context),
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                      ),
                    ),
                  ),
                  Text(
                    "Coco",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "   ",
                      ))
                ],
              ),
              Container(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index += 1;
                    });
                  },
                  onHorizontalDragEnd: (d) {
                    setState(() {
                      index += 1;
                    });
                  },
                  child: Image.asset(
                    index % 3 == 0
                        ? "assets/images/coco1.png"
                        : index % 3 == 1
                            ? "assets/images/coco2.png"
                            : "assets/images/coco3.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Coco, 2 miles",
                        style: Style.h2Black,
                      ),
                      Text(
                        "Cute and energetic, love to play with other dogs",
                        style: Style.h3Black,
                      ),
                      Text(
                        "1 years old | Fully Vaccinated | Neutered ",
                        style: Style.h3Grey,
                      ),
                      Text(
                        "Male | Poodle | 10 pounds",
                        style: Style.h3Grey,
                      ),
                      Container(
                        height: 20,
                      ),
                      Text(
                        "Owner: JJ",
                        style: Style.h3Black,
                      ),
                      Text(
                        "Love dogs",
                        style: Style.h3Black,
                      ),
                      Text(
                        "Male | 23 years old",
                        style: Style.h3Black,
                      ),
                      Container(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatDetailScreen(0)))
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
                                "Contact",
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
