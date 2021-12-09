import 'package:flutter/material.dart';
import 'package:pupchat/chat_detail_screen.dart';
import 'package:pupchat/style.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen(this.status);

  final int status;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 8.5 / 10,
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
                    hintText: "Search",
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Padding(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatDetailScreen(0),
                    ),
                  );
                },
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
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.location_on,
                      color: Style.secondary,
                    ),
                    const Text(
                      "  Puppy Cafe \n  2/19 12:00 pm",
                      style: TextStyle(color: Style.secondary),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20)),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/referral.png",
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
