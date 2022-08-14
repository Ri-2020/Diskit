import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ontapp = false;
  final inputFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    // double height = size.height;
    return GestureDetector(
      onTap: () {
        setState(() {
          inputFocusNode.unfocus();
        });
        log("vujbi");
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          titleSpacing: 20,
          title: Column(
            children: [
              const Text(
                "Diskit",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'FredokaOne',
                    color: Color.fromARGB(255, 118, 57, 13)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: CupertinoSearchTextField(
                  focusNode: inputFocusNode,
                  onTap: (() {
                    setState(() {
                      ontapp = true;
                      // inputFocusNode.focus();
                    });
                  }),
                  backgroundColor: Colors.white70,
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      // vertical: 10,
                      // horizontal: 10,
                      ),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/profile.jpg',
                                scale: 10,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            width: 0.5 * width,
                            child: Column(
                              children: [
                                RichText(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 4,
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            "Quick and easy custom thumbnail\n",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(Icons.online_prediction),
                                    Text("344"),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: width,
                        padding: const EdgeInsets.symmetric(
                          vertical: 13,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(0),
                              bottom: Radius.circular(10)),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.thumb_up),
                                Text(" 0.2K"),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(Icons.person),
                                Text("2.5K"),
                              ],
                            ),
                            const Icon(
                              Icons.chat_bubble,
                              color: Color.fromARGB(255, 133, 173, 84),
                            ),
                            const Icon(Icons.share),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: inputFocusNode.hasFocus
            ? Container()
            : FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.message),
              ),
      ),
    );
  }
}
