// import 'package:diskit/Models/diskit_chat_card.dart';
import 'package:diskit/diskit_card_list.dart';
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
    return GestureDetector(
      onTap: () {
        setState(
          () {
            inputFocusNode.unfocus();
          },
        );
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
          child: DiskitChat(
            inputFocusNode: inputFocusNode,
          ), // diskit chat will come from there
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
