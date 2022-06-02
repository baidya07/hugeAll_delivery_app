import 'package:flutter/material.dart';
import 'package:hugeall_delivery_app/features/button/buttons.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({Key? key}) : super(key: key);

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: ButtonWidget(title: 'Send'),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Number',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            IntlPhoneField(
              flagsButtonPadding: const EdgeInsets.only(left: 10),
              dropdownIcon: const Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 20,
              ),
              dropdownIconPosition: IconPosition.leading,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            )
          ],
        ),
      )),
    );
  }
}
