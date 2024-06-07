import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_learn/pages/common_widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: buildAppBar("Sign Up"),
            body: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                    child: reusableText(
                        "Enter your details below to sign up for free")),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Username"),
                      buildTextField("Enter your user name", "name", "user",
                          (value) {
                        // context.read<SignInBloc>().add(EmailEvent(value));
                      }),
                      reusableText("Email"),
                      buildTextField(
                          "Enter your email address", "email", "user", (value) {
                        // context.read<SignInBloc>().add(EmailEvent(value));
                      }),
                      reusableText("Password"),
                      buildTextField("Enter your password", "password", "lock",
                          (value) {
                        // context
                        // .read<SignInBloc>()
                        // .add(PasswordEvent(value));
                      }),
                      reusableText("Confirm Password"),
                      buildTextField(
                          "Re-enter your password", "password", "lock",
                          (value) {
                        // context
                        // .read<SignInBloc>()
                        // .add(PasswordEvent(value));
                      }),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25.w),
                  child: reusableText(
                      "By creating an account, you agree with our terms & conditions"),
                ),
                buildLogInAndRegButton("Sign Up", "login", () {
                  Navigator.of(context).pushNamed("register");
                })
              ],
            )),
          ),
        ));
  }
}
