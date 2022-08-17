import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

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
                Color.fromRGBO(159, 30, 150, 1),
                Color.fromRGBO(32, 54, 138, 1)
              ],
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/Userbox.png'),
                ),
                Text(
                  'تسجيل ضيف جديد',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Flexible(
                            child: textFormField(
                              'الاسم الاول',
                              firstNameController,
                            ),
                          ),
                          Flexible(
                            child: textFormField(
                              'الاسم الثاني',
                              firstNameController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: DropdownButton<String>(
                          isExpanded: true,
                          isDense: false,
                          items: [],
                          onChanged: (value) {},
                          hint: const Text('الدولة'),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: textFormField(
                            'رقم الهاتف',
                            phoneController,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: textFormField(
                            '+966',
                            phoneController,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textFormField(
    String text,
    TextEditingController controllerVar,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
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
