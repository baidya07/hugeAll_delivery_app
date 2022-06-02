import 'package:flutter/material.dart';
import 'package:hugeall_delivery_app/core/presentation/widget/forms/buttons.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  ButtonWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PrimaryButton(onPressed: () {}, title: title),
    );
  }
}
