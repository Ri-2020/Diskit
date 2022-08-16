import 'package:diskit/diskit_chat_card_data.dart';
import 'package:flutter/material.dart';

class DiskitUpper extends StatefulWidget {
  const DiskitUpper({
    Key? key,
    required this.i,
  }) : super(key: key);

  final int i;

  @override
  State<DiskitUpper> createState() => _DiskitUpperState();
}

class _DiskitUpperState extends State<DiskitUpper> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              diskitChat[widget.i].image ?? "assets/images/default_profile.jpg",
              scale: diskitChat[widget.i].image == null ? 4.4 : 10,
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
                        text: diskitChat[widget.i].title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.online_prediction),
                  Text("${diskitChat[widget.i].online} in past 24hrs"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
