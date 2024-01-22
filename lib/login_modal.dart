import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/social_button.dart';

class SignInOne extends StatelessWidget {
  const SignInOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool _rememberMe = false;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Colors.white, // Make the background white
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10),
              child: Column(
                mainAxisAlignment: size.width > 500
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // logo section
                  logo(size.width < 500 ? size.height / 10 : 0,
                      size.height / 10),
                  SizedBox(
                    height: size.width < 500 ? size.height * 0.02 : 0,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(1),
                          borderRadius: BorderRadius.circular(25)),
                      child: Text.rich(
                        TextSpan(
                          text: 'WELCOME BACK',
                          style: GoogleFonts.inter(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text.rich(
                        TextSpan(
                          text: 'Login',
                          style: GoogleFonts.inter(
                              fontSize: 20.0, fontWeight: FontWeight.w900),
                        ),
                      )),
                  Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(fontSize: 10),
                          children: const [
                            TextSpan(
                              text: 'New here?',
                            ),
                            TextSpan(
                              text: ' ',
                            ),
                            TextSpan(
                              text: 'Create an account',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      )),
                  //email & password section
                  emailTextField(size),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  passwordTextField(size),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (value) {
                              // setState(() {
                              //   _rememberMe = value!;
                              // });
                            },
                          ),
                          Text(
                            'Remember me',
                            style: GoogleFonts.inter(
                              fontSize: 10.0,
                              color: const Color(0xFF15224F),
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password?',
                          style: GoogleFonts.inter(
                            fontSize: 10.0,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //sign in button & sign in with text
                  SizedBox(
                    height: 10,
                  ),
                  signInButton(size),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  signInWithText(),
                  SizedBox(
                    height: size.height * 0.02,
                  ),

                  //sign in with google & apple
                  // signInGoogleButton(size),

                  SignInOneSocialButton(),
                  // signInAppleButton(size),
                  SizedBox(
                    height: size.height * 0.03,
                  ),

                  //sign up text here
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [footerText()],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget logo(double height_, double width_) {
    return SvgPicture.asset(
      'assets/logo.svg',
      height: height_,
      width: width_,
    );
  }

  Widget richText(double fontSize) {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.inter(
          fontSize: fontSize,
          color: const Color(0xFF21899C),
          letterSpacing: 3,
          height: 1.03,
        ),
        children: const [
          TextSpan(
            text: 'LOGIN ',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'PAGES \nUI ',
            style: TextStyle(
              color: Color(0xFFFE9879),
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'KIT',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget emailTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF15224F),
        ),
        maxLines: 1,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Email/ Phone number',
            labelStyle: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget passwordTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF15224F),
        ),
        maxLines: 1,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget signInButton(Size size) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xff000000),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4C2E84).withOpacity(0.2),
            offset: const Offset(0, 15.0),
            blurRadius: 60.0,
          ),
        ],
      ),
      child: Text(
        'Continue',
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget signInWithText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(child: Divider()),
        const SizedBox(
          width: 16,
        ),
        Text(
          'Or',
          style: GoogleFonts.inter(
            fontSize: 12.0,
            color: const Color(0xFF969AA8),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          width: 16,
        ),
        const Expanded(child: Divider()),
      ],
    );
  }

  //sign up text here
  Widget footerText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Terms of Service',
                style: GoogleFonts.inter(
                    fontSize: 12.0,
                    color: const Color(0xFF000000),
                    decoration: TextDecoration.underline),
              ),
              TextSpan(
                text: ' and ',
                style: GoogleFonts.inter(
                  fontSize: 12.0,
                  color: const Color(0xFF000000),
                ),
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: GoogleFonts.inter(
                    fontSize: 12.0,
                    color: const Color(0xFF000000),
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
