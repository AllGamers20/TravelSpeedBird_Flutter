import 'package:flutter/material.dart';
import 'package:speedbirdteavel/Colors/colors.dart';
import 'package:speedbirdteavel/Controllers/signup_controller.dart';
import 'package:speedbirdteavel/Widgets/signup_btn.dart';
import 'package:validators/validators.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

final signupformkey = GlobalKey<FormState>();

class _SignupPageState extends State<SignupPage> {
  bool ispass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                './Assets/Images/Logo.png',
                height: 200,
                width: 200,
              ),
              Text(
                'Create Account',
                style: TextStyle(
                  color: kLightGreen,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    key: signupformkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: signupnamecontroller,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Your Name';
                            }
                            return null;
                          },
                          style: TextStyle(
                            color: kLightGreen,
                          ),
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
                            prefixIcon: const Icon(Icons.person),
                            prefixIconColor: kDodgerBlue,
                            hintText: 'Name',
                            hintStyle: TextStyle(color: kLightGreen),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          controller: signupemailcontroller,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Valid Email';
                            } else if (!isEmail(value)) {
                              return 'Email Not Valid';
                            }
                            return null;
                          },
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
                          height: 16,
                        ),
                        TextFormField(
                          controller: signuppasswordontroller,
                          validator: (value) {
                            if (value!.length < 6) {
                              return 'Enter Valid Password';
                            }

                            return null;
                          },
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
                          height: 16,
                        ),
                        TextFormField(
                          controller: signuppasswordontroller,
                          validator: (value) {
                            if (value!.length < 6) {
                              return 'Enter Valid Password';
                            }

                            return null;
                          },
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
                            hintText: 'Confirm password',
                            hintStyle: TextStyle(color: kLightGreen),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const SignupBtn(),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'or sign in with:',
                              style: TextStyle(color: kLightGreen),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
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
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('have account'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Login',
                              style: TextStyle(color: kLightGreen),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
