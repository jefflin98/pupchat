import 'package:flutter/material.dart';
import 'package:pupchat/style.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 15),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 9 / 10,
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
                      hintText: "search",
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    width: 10,
                  ),
                  Image.asset("assets/images/dogHead1.png"),
                  Container(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Coco's owner",
                        style: Style.h2Black,
                      ),
                      Text(
                        "Hi!",
                        style: Style.h3,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
