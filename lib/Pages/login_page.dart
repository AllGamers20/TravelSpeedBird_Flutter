import 'package:flutter/material.dart';
import 'package:speedbirdteavel/Colors/colors.dart';
import 'package:speedbirdteavel/Controllers/login_controller.dart';
import 'package:speedbirdteavel/Pages/signup_page.dart';
import 'package:speedbirdteavel/Widgets/login_btn.dart';
import 'package:validators/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final loginformkey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> {
  bool ispass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                './Assets/Images/Logo.png',
                height: 200,
                width: 200,
              ),
              Text(
                'Please login with your credential',
                style: TextStyle(
                  fontSize: 20,
                  color: kLightGreen,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    key: loginformkey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Valid Email';
                            } else if (!isEmail(value)) {
                              return 'Email Not Valid';
                            }
                            return null;
                          },
                          controller: loginEmailController,
                          style: TextStyle(
                            color: kLightGreen,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: kLightGreen,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: kDodgerBlue,
                                width: 3,
                              ),
                            ),
                            filled: true,
                            fillColor: kWhite,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: kDodgerBlue,
                                width: 3,
                              ),
                            ),
                            prefixIcon: const Icon(Icons.email),
                            prefixIconColor: kDodgerBlue,
                            hintText: 'Email',
                            hintStyle: TextStyle(color: kLightGreen),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.length < 6) {
                              return 'Enter Valid Password';
                            }

                            return null;
                          },
                          controller: loginPasswordController,
                          cursorColor: kLightGreen,
                          style: TextStyle(
                            color: kLightGreen,
                          ),
                          obscuringCharacter: '*',
                          obscureText: ispass,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: kDodgerBlue,
                                width: 3,
                              ),
                            ),
                            filled: true,
                            fillColor: kWhite,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: kDodgerBlue,
                                width: 3,
                              ),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  ispass = !ispass;
                                });
                              },
                              child: Icon(
                                (ispass
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                            ),
                            suffixIconColor: kDodgerBlue,
                            prefixIcon: const Icon(Icons.lock),
                            prefixIconColor: kDodgerBlue,
                            hintText: 'password',
                            hintStyle: TextStyle(color: kLightGreen),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        const LoginBtn(),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'forget password?',
                                style: TextStyle(
                                  color: kLightGreen,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'or login with',
                              style: TextStyle(color: kLightGreen),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              child: Image.asset(
                                './Assets/Images/google.png',
                                width: 30,
                                height: 30,
                              ),
                            ),
                            GestureDetector(
                              child: Image.asset(
                                './Assets/Images/facebook.png',
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('dont have Account?'),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignupPage(),
                                    ));
                              },
                              child: Text(
                                'create one',
                                style: TextStyle(color: kLightGreen),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
