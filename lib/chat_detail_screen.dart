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
                    Image.asset("assets/images/m1.png"),
                    const Spacer()
                  ],
                ),
                Row(
                  children: [
                    const Spacer(),
                    Image.asset("assets/images/m2.png"),
                    const SizedBox(width: 20),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    Image.asset("assets/images/m3.png"),
                    const Spacer()
                  ],
                ),
                status >= 1
                    ? Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                context: context,
                                builder: (_) => Container(
                                  color: Style.no,
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  width: MediaQuery.of(context).size.width,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ChatDetailScreen(2),
                                        ),
                                      );
                                    },
                                    child: Image.asset("assets/images/time.png",
                                        fit: BoxFit.fitWidth),
                                  ),
                                ),
                              );
                            },
                            child: Image.asset("assets/images/m4.png"),
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
