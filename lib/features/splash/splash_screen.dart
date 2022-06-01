// ignore_for_file: sized_box_for_whitespace

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/colors.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/size_constants.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:hugeall_delivery_app/core/presentation/routes/router.gr.dart';
import 'package:hugeall_delivery_app/core/presentation/widget/forms/buttons.dart';
import 'package:hugeall_delivery_app/features/auth/login_page.dart';

final List<Widget> itemList = [
  const _SliderOne(),
  const _SliderTwo(),
  const _SliderThree()
];
int _currentPosition = 0;

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  CarouselController _controller = CarouselController();
  var indexCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text("Skip",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600)),
            )
          ],
        ),
        body: CarouselSlider(
          carouselController: _controller,
          items: itemList,
          options: CarouselOptions(
              height: 500,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) => setState(() {
                    _currentPosition = index;
                    indexCount = index + 1;
                  })),
        ),
        bottomNavigationBar: (indexCount <= 2)
            ? _BottomWidget(controller: _controller)
            : const _Buttons());
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PrimaryButton(
            onPressed: () {
              context.router.navigate(const LoginRoute());
            },
            title: "Sign up",
            width: 350,
          ),
          SBC.sH,
          PrimaryOutlinedButton(
            onPressed: () {},
            title: "Login",
            width: 350,
            color: const Color.fromARGB(255, 10, 82, 225),
          ),
          SBC.mH
        ],
      ),
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({
    Key? key,
    required CarouselController controller,
  })  : _controller = controller,
        super(key: key);

  final CarouselController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(11.0, 0, 11.0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DotsIndicator(
            dotsCount: itemList.length,
            position: _currentPosition.toDouble(),
            decorator: DotsDecorator(
                shape: const CircleBorder(),
                size: const Size(SC.mH, SC.mW),
                color: const Color.fromARGB(255, 212, 212, 212),
                activeColor: primaryColor,
                activeSize: const Size(SC.mH, SC.mW)),
          ),
          PrimaryButton(
            onPressed: () {
              _controller.nextPage();
            },
            title: "Next",
            width: 100,
            radius: 7,
          )
        ],
      ),
    );
  }
}

class _BodyText extends StatelessWidget {
  final String title;
  const _BodyText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
          color: const Color.fromARGB(255, 123, 122, 122), height: 1.6),
    );
  }
}

class _TitleText extends StatelessWidget {
  final String title;
  const _TitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class _SliderOne extends StatelessWidget {
  const _SliderOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Positioned(
                    top: 20,
                    left: 50,
                    child: Image.asset("assets/images/Ellipse4.png")),
                Positioned(
                    top: 50,
                    left: 110,
                    child: Image.asset(
                      "assets/images/framee.png",
                      height: 251,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SBC.mH,
                const _TitleText(title: "Fast Pickup"),
                SBC.mH,
                const _BodyText(
                  title:
                      "Push a button and we are there to \npickup in 20 minute",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _SliderTwo extends StatelessWidget {
  const _SliderTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Positioned(
                    bottom: 18,
                    left: 55,
                    child: Image.asset("assets/images/Ellipse4.png")),
                Positioned(
                    bottom: 63,
                    left: 84,
                    child: Image.asset(
                      "assets/images/Frame1.png",
                      height: 192,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SBC.mH,
                const _TitleText(title: "Affordable Delivery"),
                SBC.mH,
                const _BodyText(
                  title:
                      "Getting package delivered \nshouldn't be expensive, we make \nit affordable",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _SliderThree extends StatelessWidget {
  const _SliderThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Positioned(
                    bottom: 15,
                    left: 60,
                    child: Image.asset("assets/images/Ellipse4.png")),
                Positioned(
                    bottom: 48,
                    left: 48,
                    child: Image.asset(
                      "assets/images/frame2.png",
                      height: 260,
                    )),
                Positioned(
                    bottom: 149,
                    left: 241,
                    child: Image.asset(
                      "assets/images/Frame1.png",
                      height: 73,
                    ))
              ],
            ),
          ),
          SBC.lH,
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: SC.edgeGap, horizontal: SC.edgeGap),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SBC.mH,
                const _TitleText(title: "Easy Tracking"),
                SBC.mH,
                const _BodyText(
                  title:
                      "Getting package delivered \nshouldn't be expensive, we make \nit affordable",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
