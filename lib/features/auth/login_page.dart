import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/size_constants.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/ui_assets.dart';
import 'package:hugeall_delivery_app/core/presentation/routes/router.gr.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _BottomWidget(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/images/logo_image.png',
                          fit: BoxFit.contain,
                        )),
                    SBC.xxLH,
                    Text(
                      'Login To Hugall',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    SBC.lH,
                    Text(
                      'Everthing beyond expectation',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: const Color(0xff7B8698),
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Email or Phone Number',
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    TextFormField(),
                    SBC.lH,
                    Text(
                      'Password',
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.visibility_outlined)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          side: const BorderSide(color: Colors.grey),
                          onChanged: (value) {
                            setState(() {
                              value = _value;
                            });
                          },
                          value: false,
                        ),
                        const Text('Remember me'),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        context.router.push(ForgotPasswordRoute());
                      },
                      child: Text(
                        'Forgot Password?',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: const Color(0xff144FFF),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SBC.xxLH,
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xff640293),
                          maximumSize: const Size(330, 50),
                          minimumSize: const Size(330, 50)),
                      onPressed: () {},
                      child: const Text('Login')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BottomWidget extends StatelessWidget {
  const _BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Dont have an account?',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        SBC.sW,
        Text(
          'Create now',
          style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: const Color(0xff144FFF), fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
