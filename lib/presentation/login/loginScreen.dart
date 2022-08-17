import 'package:bloct/presentation/component/CustomButton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var phoneController = TextEditingController();
  var passController = TextEditingController();
  var numberController = TextEditingController();

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
                Color.fromRGBO(32, 54, 138, 1),
                Color.fromRGBO(163, 29, 150, 1),
              ],
            ),
          ),
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 10),
                SizedBox(height: MediaQuery.of(context).size.height / 10),
                Image.asset('assets/images/Layer2.png'),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                Image.asset('assets/images/welcome.png'),
                SizedBox(height: MediaQuery.of(context).size.height / 30),
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: textFormField(
                          'رقم الهاتف',
                          const Icon(Icons.person_pin_outlined),
                          phoneController,
                          false),
                    ),
                    Flexible(
                      flex: 1,
                      child: textFormField('+966', const Icon(Icons.add),
                          numberController, true),
                    ),
                  ],
                ),
                textFormField(
                    'كلمة المرور',
                    const Icon(Icons.privacy_tip_outlined),
                    passController,
                    false),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                    top: 20,
                  ),
                  child: CustomButton(text: 'تسجيل الدخول'),
                ),
                Text(
                  'لقد نسيت كلمة المرور؟',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 10),
                Image.asset('assets/images/infinit.png'),
                SizedBox(height: MediaQuery.of(context).size.height / 25),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'اتفاقية المستخدم',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const VerticalDivider(color: Colors.white, thickness: 1),
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
      ),
    );
  }

  Widget textFormField(String text, Icon icon,
      TextEditingController controllerVar, bool isNumber) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          prefixIcon: isNumber ? null : icon,
          fillColor: const Color(0xFFFAFAFA),
          contentPadding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          labelText: text,
        ),
        controller: controllerVar,
        keyboardType: TextInputType.text,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'the password must not be empty';
          }
          return null;
        },
      ),
    );
  }
}
