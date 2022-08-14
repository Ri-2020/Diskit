import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    // double height = size.height;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            width: width,
            margin: EdgeInsets.only(top: 0.1 * width, bottom: 0.1 * width),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "DISKIT",
                  style: TextStyle(
                    color: Color.fromARGB(255, 247, 128, 44),
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'FredokaOne',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/conv.jpg",
                      scale: 3,
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.9 * width,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome to Diskit\n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Color.fromARGB(255, 36, 36, 36)),
                        ),
                        TextSpan(
                          text:
                              "Join the latest community app that will cleat all the doubts of youtube that can't be solved on youtube or any other sites. Find someone similar to you!",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: Color.fromARGB(255, 62, 62, 62),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: width,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 0.2 * width,
                    ),
                    child: SignInButton(
                      Buttons.GoogleDark,
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
