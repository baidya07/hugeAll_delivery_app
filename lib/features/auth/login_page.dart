import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/size_constants.dart';
import 'package:hugeall_delivery_app/core/presentation/resources/ui_assets.dart';
import 'package:hugeall_delivery_app/core/presentation/routes/router.gr.dart';
import 'package:hugeall_delivery_app/core/presentation/widget/forms/buttons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const _BottomWidget(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
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
                    SBC.lH,
                    TextFormField(),
                    SBC.xxLH,
                    Text(
                      'Password',
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    SBC.lH,
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.visibility_outlined),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 38,
                          width: 22,
                          child: Checkbox(
                            value: this.value,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            visualDensity: VisualDensity.compact,
                            side: const BorderSide(color: Colors.grey),
                            onChanged: (value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                            // value: false,
                          ),
                        ),
                        SBC.mW,
                        const Text('Remember me'),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        context.router.push(const ForgotPasswordRoute());
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
                      onPressed: () {
                        context.router.navigate(const LandingRoute());
                      },
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Row(
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
      ),
    );
  }
}
