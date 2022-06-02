import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/size_constants.dart';
import 'package:hugeall_delivery_app/features/button/buttons.dart';
import './number_page.dart';
import 'email_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    _controller?.addListener(() {
      setState(() {
        _selectedIndex = _controller!.index;
      });
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){context.router.pop();},
                child: const Icon(
                  Icons.close_outlined,
                  color: Colors.black,
                ),
              ),
              SBC.xxLH,
              Center(
                child: Text(
                  'Forgot Password',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
              SBC.xxLH,
              Center(
                child: Text(
                  'Please enter your phone number, we’ll\nsend a temporary password',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      height: 1.5),
                ),
              ),
              SBC.xxLH,
              TabBar(
                  controller: _controller,
                  indicatorColor: const Color(0xff640293),
                  //  controller: controller,
                  labelColor: Colors.black,
                  tabs: const [
                    Tab(
                      text: 'Phone',
                    ),
                    Tab(
                      text: 'Email',
                    ),
                  ]),
              SBC.xLH,
              Expanded(
                child: TabBarView(
                    controller: _controller,
                    children: const [NumberPage(), EmailPage()]),
              ),
              ButtonWidget(title: 'Send'),
            ],
          ),
        ),
      ),
    );
  }
}
