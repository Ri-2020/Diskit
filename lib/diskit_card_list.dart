import 'package:diskit/diskit_card_upper.dart';
import 'package:flutter/material.dart';

import 'diskit_chat_card_data.dart';

class DiskitChat extends StatefulWidget {
  DiskitChat({Key? key, required this.inputFocusNode}) : super(key: key);
  final FocusNode inputFocusNode;
  @override
  State<DiskitChat> createState() => _DiskitChatState();
}

class _DiskitChatState extends State<DiskitChat> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return ListView.builder(
      itemCount: diskitChat.length,
      itemBuilder: ((context, i) {
        // log("$i");
        return InkWell(
          onTap: () {
            setState(() {
              widget.inputFocusNode.unfocus();
              bool currentstate = diskitChat[i].isTap;
              for (int j = 0; j < diskitChat.length; j++) {
                diskitChat[j].isTap = false;
              }
              diskitChat[i].isTap = !currentstate;
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
                  DiskitUpper(
                    i: i,
                  ),
                  diskitChat[i].isTap
                      ? Container(
                          height: 60,
                          width: width,
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(0),
                                bottom: Radius.circular(5)),
                            color: Colors.white.withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    isLiked = !isLiked;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.thumb_up,
                                        color: isLiked
                                            ? Theme.of(context)
                                                .colorScheme
                                                .primary
                                            : Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    diskitChat[i].likes < 1000
                                        ? Text("${diskitChat[i].likes}")
                                        : Text(
                                            "${(diskitChat[i].likes / 1000).round()}K"),
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
                                  color: Color.fromARGB(255, 133, 173, 84),
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
    );
  }
}
