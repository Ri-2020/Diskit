import 'dart:developer';

import 'package:diskit/Models/diskit_chat_card.dart';
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
    List<ChatModel> diskitChat = [
      ChatModel(
        id: 1,
        title: "Quick and easy custom thumbnail",
        image: "assets/images/profile.jpg",
        online: 12,
        likes: 28,
        noOfUsers: 331,
        unReadChat: 4,
      ),
      ChatModel(
        id: 1,
        title: "Use the Right Keywords for YouTube Search",
        image: "assets/images/profile.jpg",
        online: 12,
        likes: 28,
        noOfUsers: 331,
        unReadChat: 4,
      ),
      ChatModel(
        id: 1,
        title: "Avoid YouTube Clickbait Titles",
        image: "assets/images/profile.jpg",
        online: 12,
        likes: 8,
        noOfUsers: 331,
        unReadChat: 4,
      ),
      ChatModel(
        id: 1,
        title: "Stay Under the YouTube Title Character Limit",
        image: "assets/images/profile.jpg",
        online: 2,
        likes: 8,
        noOfUsers: 331,
        unReadChat: 4,
      ),
      ChatModel(
        id: 1,
        title: "Quick and easy custom thumbnail",
        image: "assets/images/profile.jpg",
        online: 2,
        likes: 8,
        noOfUsers: 331,
        unReadChat: 4,
      ),
      ChatModel(
        id: 1,
        title: "9 Ways to Write Exciting YouTube Titles for Your Videos",
        image: "assets/images/profile.jpg",
        online: 2,
        likes: 8,
        noOfUsers: 331,
        unReadChat: 4,
        // isTap: false,
      ),
      ChatModel(
        id: 1,
        title: " Use Words Your Audience Can Relate To",
        image: null,
        online: 2,
        likes: 8,
        noOfUsers: 331,
        unReadChat: 4,
      ),
    ];

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
          scrolledUnderElevation: 10,
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
            itemCount: diskitChat.length,
            itemBuilder: ((context, i) {
              // log("$i");
              return InkWell(
                onTap: () {
                  setState(() {
                    diskitChat[i].isTap = !(diskitChat[i].isTap);
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
                                  diskitChat[i].image ??
                                      "assets/images/default_profile.jpg",
                                  scale: diskitChat[i].image == null ? 4.4 : 10,
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
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: diskitChat[i].title,
                                            style: const TextStyle(
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
                                    children: [
                                      const Icon(Icons.online_prediction),
                                      Text(
                                          "${diskitChat[i].online} in past 24hrs"),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        // istapOnBox
                        diskitChat[i].isTap
                            ? Container(
                                height: 60,
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
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          const Icon(Icons.thumb_up),
                                          Text(" ${diskitChat[i].likes}K"),
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          const Icon(Icons.person),
                                          Text("${diskitChat[i].noOfUsers}K"),
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Icon(Icons.share),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: const Icon(
                                        Icons.chat_rounded,
                                        // Icons.arrow_right_rounded,
                                        // size: 50,
                                        color:
                                            Color.fromARGB(255, 133, 173, 84),
                                      ),
                                    ),
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
