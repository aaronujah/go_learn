import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_learn/common/values/colors.dart';
import 'package:go_learn/pages/bloc_providers.dart';
import 'package:go_learn/pages/register/register.dart';
import 'package:go_learn/pages/sign_in/sign_in.dart';
import 'package:go_learn/pages/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
          builder: (context, child) => MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                    appBarTheme: const AppBarTheme(
                        iconTheme: IconThemeData(color: AppColors.primaryText),
                        elevation: 0,
                        backgroundColor: Colors.white)),
                home: const Welcome(),
                routes: {
                  // "myHomePage": (context) => const MyHomePage(),
                  "signIn": (context) => const SignIn(),
                  "register": (context) => const Register()
                },
              )),
    );
  }
}
