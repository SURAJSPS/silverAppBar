import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconText extends StatelessWidget {
  String? text;
  IconData? icon;

  IconText({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  icon,
                  size: 15,
                ))),
        SizedBox(
          height: 5,
        ),
        Text(
          text!,
          style: TextStyle(fontSize: 13, color: Colors.white),
        ),
      ],
    );
  }
}
