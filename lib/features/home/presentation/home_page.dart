import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeall_delivery_app/core/presentation/routes/router.gr.dart';

import '../../../core/presentation/resources/size_constants.dart';
import '../../../core/presentation/resources/ui_assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Location',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SBC.mH,
              const _LocationButton(),
              SBC.xxLH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello Suzen!',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SvgPicture.asset(
                    UIAssets.getSvg('notification_icon.svg'),
                  ),
                ],
              ),
              SBC.lH,
              Text(
                'Where are you sending your package to?',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SBC.xxLH,
              const _SearchButton(),
              SBC.xxLH,
              Text(
                'Our Service',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SBC.lH,
              _ServiceMethods(
                iconImage: 'parcel_icon.png',
                title: 'Send Parcel',
                onTap: () {
                  context.router.navigate(const ParcelRoute());
                },
              ),
              SBC.lH,
              _ServiceMethods(
                iconImage: 'track_icon.png',
                title: 'Track Order',
                onTap: () {},
              ),
              SBC.lH,
              _ServiceMethods(
                iconImage: 'wallet_icon.png',
                title: 'Add Wallet',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ServiceMethods extends StatelessWidget {
  final String iconImage;
  final String title;
  final void Function() onTap;
  // final Function? onPressed;
  const _ServiceMethods({
    Key? key,
    required this.onTap,
    required this.iconImage,
    required this.title,
    // this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffF6F6F6),
            // border: Border.all(
            //   width: 0.1,
            // ),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
               SizedBox(
                height: 50,
                  child: Image.asset(UIAssets.getImage(iconImage,),)),
              SBC.mW,
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward,
                size: 15,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchButton extends StatelessWidget {
  const _SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffF4F7FB),
          // border: Border.all(
          //   width: 0.1,
          // ),
          borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SBC.mW,
            SvgPicture.asset(
              UIAssets.getSvg('search_icon.svg'),
            ),
            SBC.mW,
            Text(
              'Enter your Package Destination',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}

class _LocationButton extends StatelessWidget {
  const _LocationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff374253),
            width: 0.6,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SBC.mW,
            const Icon(Icons.location_on_outlined, color: Colors.red, size: 15),
            SBC.mW,
            Text(
              'Chabahil, Kathmandu...',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, color: Colors.black, size: 12),
          ],
        ),
      ),
    );
  }
}
