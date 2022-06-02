import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/colors.dart';
import 'package:hugeall_delivery_app/core/presentation/routes/router.gr.dart';
import 'package:hugeall_delivery_app/core/presentation/widget/cached_network_image_builder.dart';
import 'package:hugeall_delivery_app/core/presentation/widget/forms/buttons.dart';

import '../../../core/presentation/resources/size_constants.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              PrimaryOutlinedButton(
                onPressed: () {
                  context.router.navigate(const HomeRoute());
                },
                title: 'Skip',
                width: 160,
              ),
              PrimaryButton(
                onPressed: () {
                  context.router.navigate(const HomeRoute());
                },
                title: 'Use Location',
                width: 160,
              ),
            ],
          ),
          SBC.xxLH
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomCachedNetworkImage(
              'https://cdn.thinglink.me/api/image/650272041710125056/1024/10/scaletowidth',
              aspectRatio: 0.85,
            ),
            // SBC.xxLH,
            Container(
              width: 350,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: scaffoldBgColor, blurRadius: 20.0, spreadRadius: 28)
              ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Enable your Location',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SBC.lH,
                  Text(
                    'To ensure fast delivery, we want to \n know your current location',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(height: 1.5),
                  ),
                  SBC.xxLH,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
