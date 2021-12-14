// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:pupchat/home_screen.dart';
import 'package:pupchat/main.dart';
import 'package:pupchat/style.dart';

class ChatDetailScreen extends StatelessWidget {
  ChatDetailScreen(this.status);

  final int status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.pop(context),
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        ),
                      ),
                    ),
                    const Text(
                      "Coco's Owner",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(index: 1),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.map,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                ),
                status >= 2
                    ? Container(
                        color: Style.primary,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.notifications_active,
                              color: Colors.white,
                              size: 20,
                            ),
                            Container(
                              width: 8,
                            ),
                            const Text(
                              "2/19 12:00pm at Puppy Cafe",
                              style: Style.h2White,
                            ),
                            const Spacer(),
                            const Text(
                              "Yes | No  ",
                              style: Style.h2White,
                            )
                          ],
                        ),
                      )
                    : Container(),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    // Image.asset("assets/images/m1.png"),
                    Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/m_left.png',
                            ),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: const Text(
                          "Hi! Nice to meet you! \nYour dog is so cute!",
                          style: Style.h3Black,
                        ),
                      ),
                    ),
                    const Spacer()
                  ],
                ),
                Container(
                  height: 10,
                ),
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width * 2 / 3,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/m_right.png',
                            ),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: const Text(
                          "Coco is very cute too! We seems to live very close to each other. \nDo you want to meet sometime?",
                          style: Style.h3White,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
                Container(
                  height: 5,
                ),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width * 2 / 3,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/m_left.png',
                            ),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: const Text(
                          "Sure! But I don't know a lot of dog-friendly places nearby. Do you know any places?",
                          style: Style.h3Black,
                        ),
                      ),
                    ),
                    const Spacer()
                  ],
                ),
                Container(
                  height: 10,
                ),
                status >= 1
                    ? Row(
                        children: [
                          const Spacer(),
                          Container(
                            // color: Colors.red,
                            width: MediaQuery.of(context).size.width * 2 / 3,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/m_right.png',
                                  ),
                                  fit: BoxFit.fill,
                                  alignment: Alignment.topCenter),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Check this place!",
                                    style: Style.h3White,
                                  ),
                                  Text(
                                    "Puppy Cafe",
                                    style: Style.h3WhiteBold,
                                  ),
                                  Image.asset("assets/images/rating.png"),
                                  Container(
                                    height: 1,
                                    color: Colors.white,
                                  ),
                                  Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                          context: context,
                                          builder: (_) => Container(
                                            color: Style.no,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                3,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Column(
                                              children: [
                                                Spacer(),
                                                Image.asset(
                                                    "assets/images/time.png",
                                                    fit: BoxFit.fitWidth),
                                                GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              ChatDetailScreen(
                                                                  2),
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      height: 60,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      child: Center(
                                                        child: Text(
                                                          "Confirm Time",
                                                          style: Style.h1White,
                                                        ),
                                                      ),
                                                      color: Style.primary,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Make appointment",
                                        style: Style.h2White,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                      )
                    : Container(),
                const Spacer(),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Style.greyBorder, //(0xfff6f6f6),
                      ),
                      padding: const EdgeInsets.all(
                        10,
                      ),
                      child: const Text("When do you walk Coco?"),
                    ),
                    Container(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Style.greyBorder, //(0xfff6f6f6),
                      ),
                      padding: const EdgeInsets.all(
                        10,
                      ),
                      child: const Text("Can I see Coco?"),
                    ),
                  ],
                ),
                Container(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.image,
                      color: Style.primary,
                      size: 34,
                    ),
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
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Message here...",
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.send,
                      color: Style.primary,
                      size: 30,
                    ),
                  ],
                ),
                Container(
                  height: 10,
                ),
              ]),
        ),
      ),
    );
  }
}
