import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  ButtonWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: const Color(0xff640293),
              maximumSize: const Size(330, 50),
              minimumSize: const Size(330, 50)),
          onPressed: () {},
          child: Text(title)),
    );
  }
}
