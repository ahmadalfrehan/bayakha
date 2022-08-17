import 'package:bloct/presentation/SignUp/SignUpScreen.dart';
import 'package:flutter/material.dart';

import '../login/loginScreen.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 37,
        right: 47,
        bottom: 14,
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.clamp,
            colors: [
              Color.fromRGBO(221, 50, 173, 1),
              Color.fromRGBO(32, 54, 138, 1),
            ],
          ),
        ),
        child: MaterialButton(
          height: 40,
          onPressed: () {
            switch (text) {
              case 'تسجيل الدخول':
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
                break;
              case 'تسجيل':
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  SignUpScreen(),
                  ),
                );
            }
          },
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}
