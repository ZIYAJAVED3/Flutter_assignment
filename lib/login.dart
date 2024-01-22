import 'package:flutter/material.dart';
import 'login_modal.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Image.network(
          'https://res.cloudinary.com/dwm6rmkih/image/upload/v1705841099/kc3v3rqh0xlunfsqjlue.png',
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(1),
              borderRadius: size.width > 500
                  ? BorderRadius.circular(25)
                  : BorderRadius.circular(0)),
          margin: EdgeInsets.only(
              left: size.width > 500 ? size.width * 0.6 : 0,
              top: size.width > 500 ? 50 : 0,
              bottom: size.width > 500 ? 20 : 0),
          width: size.width > 500 ? 350 : size.width,
          padding: EdgeInsets.all(20),
          child: SignInOne(),
        ),
      ],
    ));
  }
}
