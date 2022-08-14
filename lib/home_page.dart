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
        body: const Center(child: Text("Sbdisk")),
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
