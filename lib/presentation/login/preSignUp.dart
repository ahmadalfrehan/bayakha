import 'package:bloct/presentation/component/CustomButton.dart';
import 'package:bloct/presentation/login/loginScreen.dart';
import 'package:flutter/material.dart';

class PreSignUp extends StatelessWidget {
  const PreSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.mirror,
              colors: [
                Color.fromRGBO(97, 55, 160, 1),
                Color.fromRGBO(139, 23, 255, 0.8),
                Color.fromRGBO(97, 55, 160, 1),
                Color.fromRGBO(171, 16, 137, 0.67),
              ],
            ),
          ),
          child: Column(
            children: [
              const Spacer(),
              const CustomButton(text: 'تسجيل الدخول'),
              const CustomButton(text:'تسجيل'),
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              Text(
                'التسجيل باستخدام',
                style: Theme.of(context).textTheme.headline6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/facebook.png'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/google.png'),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 20),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'اتفاقية المستخدم',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    VerticalDivider(color: Colors.white, thickness: 1),
                    Text(
                      'شروط الخصوصية',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
