import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_learn/common/values/colors.dart';
import 'package:go_learn/global.dart';

import 'common/routes/pages.dart';

void main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...AppPages.allBlocProviders(context)],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) => MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                    appBarTheme: const AppBarTheme(
                        iconTheme: IconThemeData(color: AppColors.primaryText),
                        elevation: 0,
                        backgroundColor: Colors.white)),
                onGenerateRoute: AppPages.GenerateRouteSettings,
                // home: const Welcome(),
                // routes: {
                //   // "myHomePage": (context) => const MyHomePage(),
                //   "signIn": (context) => const SignIn(),
                //   "register": (context) => const Register()
                // },
              )),
    );
  }
}
