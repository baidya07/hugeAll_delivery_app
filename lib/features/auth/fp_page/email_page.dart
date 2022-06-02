import 'package:flutter/material.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/size_constants.dart';
import 'package:hugeall_delivery_app/features/button/buttons.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: ButtonWidget(title: 'Send'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Address',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              SBC.lH,
              const TextField(
                  // decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //         borderSide: BorderSide(color: Colors.grey))),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
