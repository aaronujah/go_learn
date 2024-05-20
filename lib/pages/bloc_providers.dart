import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_learn/app_blocs.dart';
import 'package:go_learn/pages/sign_in/sign_in.dart';
import 'package:go_learn/pages/welcome/bloc/welcome_blocs.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(
          create: (context) => WelcomeBloc(),
        ),
        BlocProvider(create: (context) => AppBlocs()),
        BlocProvider(create: (context) => SignIn())
      ];
}
