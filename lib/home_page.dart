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
  bool istapOnBox = false;
  final inputFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;

    // double height = size.height;
    return GestureDetector(
      onTap: () {
        setState(
          () {
            inputFocusNode.unfocus();
          },
        );
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
                  color: Color.fromARGB(255, 171, 171, 171),
                ),
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
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: ((context, i) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    istapOnBox = !istapOnBox;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 0.04 * width,
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        // vertical: 10,
                        // horizontal: 10,
                        ),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                              width: 0.45 * width,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: RichText(
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
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
                                  ),
                                  Row(
                                    children: const [
                                      Icon(Icons.online_prediction),
                                      Text("344 in past 24hrs"),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        istapOnBox
                            ? Container(
                                width: width,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 13,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(0),
                                      bottom: Radius.circular(5)),
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                            : Container(),
                      ],
                    ),
                  ),
                ),
              );
            }),
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
