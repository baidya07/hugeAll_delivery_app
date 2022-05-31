import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/colors.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/size_constants.dart';
import 'package:hugeall_delivery_app/core/presentation/widget/forms/buttons.dart';
import 'package:introduction_screen/introduction_screen.dart';

class FirstSplashPage extends StatefulWidget {
  const FirstSplashPage({Key? key}) : super(key: key);

  @override
  State<FirstSplashPage> createState() => _FirstSplashPageState();
}

class _FirstSplashPageState extends State<FirstSplashPage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalHeader: SafeArea(
        child: Row(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
            Padding(
              padding: const EdgeInsets.only(left: 270.0),
              child: PrimaryTextButton(
                title: "Skip",
                onPressed: () {},
                size: SC.lH,
              ),
            )
          ],
        ),
      ),
      pages: [
        PageViewModel(
            // title: "Fast Pickup",
            titleWidget: const Padding(
              padding: EdgeInsets.only(right: 70.0),
              child: _TitleText(
                text: "Fast Pickup",
              ),
            ),
            bodyWidget: const _BodyText(
              text: "Push a button and we are there to \npickup in 20 minute",
            ),
            // decoration: pageDecoration,
            image: Stack(
              children: [
                Positioned(
                    bottom: 18,
                    left: 55,
                    child: Image.asset("assets/images/Ellipse4.png")),
                Positioned(
                    bottom: 1,
                    left: 110,
                    child: Image.asset(
                      "assets/images/framee.png",
                      height: 251,
                    ))
              ],
            )),
        PageViewModel(
            titleWidget: const _TitleText(text: "Affordable Delivery"),
            bodyWidget: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: _BodyText(
                  text:
                      "Getting package delivered \nshouldn't be expensive, we make \nit affordable"),
            ),
            // decoration: pageDecoration,
            image: Stack(
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
            )),
        PageViewModel(
            titleWidget: const Padding(
              padding: EdgeInsets.only(right: 40.0),
              child: _TitleText(text: "Easy Tracking"),
            ),
            bodyWidget: const _BodyText(
                text:
                    "Getting package delivered \nshouldn't be expensive, we make \nit affordable"),
            // decoration: pageDecoration,
            image: Stack(
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
            ))
      ],
      onDone: () => {},
      showDoneButton: false,
      next: PrimaryButton(
        title: "Next",
        onPressed: () {},
        height: 45,
        width: 130,
      ),
      showNextButton: true,
    );
  }
}

class _BodyText extends StatelessWidget {
  final String text;
  const _BodyText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 68),
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: const Color.fromARGB(255, 123, 122, 122), height: 1.6),
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  final String text;

  const _TitleText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 135.0),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
      ),
    );
  }
}
